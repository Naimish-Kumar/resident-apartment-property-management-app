import 'dart:async';

import 'package:barcode_scan2/platform_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/checkpoint/updatecheckpoint.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/src/generated/checkpoint.pbgrpc.dart';
import 'package:user_app/src/generated/technician.pb.dart';
import 'package:user_app/utils/colors.dart';

class ScanCheckpoint extends StatefulWidget {
  @override
  _ScanCheckpointState createState() => _ScanCheckpointState();
}

 Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("AccessToken") ?? "";
    metadata['Authorization'] = "Bearer $token";
  }

class _ScanCheckpointState extends State<ScanCheckpoint> {
  String result = "Scan your Checkpoint QR Code";

  Future addscanQR() async {}

  Future scanQR() async {
    try {
     var qrResult = await BarcodeScanner.scan();

      setState(() {
        result = qrResult.rawContent;
       //result ='03dd6b09-37c0-4a4d-8f5b-e2b8c9db2c16';
      });

      RpcCheckpointClient client = RpcCheckpointClient(ClientChannel(Url,
          port: Port,
          options: const ChannelOptions(
              credentials: ChannelCredentials.insecure())));

      final CheckpointLookupModel data = new CheckpointLookupModel();
      data.checkpointId = result;
      appStore.setLoading(true);
      CheckpointRequest response = await client.getCheckpointById(data ,  options: (CallOptions(providers: [_provider])));
      log("Response $response");
      // ignore: unnecessary_null_comparison
      if (response.checkpointId != null && response.checkpointId!= "") {
TechnicianRequest pardata  = new TechnicianRequest();
pardata.jobTitle = response.title;
pardata.description = response.description; 
pardata.technicianId =response.checkpointId;
  UpdateCheckpointScreen( todo: pardata).launch(context,
                                            isNewTask: true,
                                            pageRouteAnimation:
                                                PageRouteAnimation.Slide);

      
      } else {
        setState(() {
          result = '';
        });
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Scan Checkpoint'),
            content: const Text('Invaild Checkpoint'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.cameraAccessDenied) {
        setState(() {
          result = "Oops! Camera Permission Required.";
        });
      } else {
        setState(() {
          result = "Ouch, an unknown error! $e";
        });
      }
    } on FormatException catch (e) {
      print(e);
      setState(() {
        result = "Come On! Scan Something.";
      });
    } catch (e) {
      setState(() {
        result = "Ouch, an unknown error! $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: appBarWidget(
        "Scan Checkpoint",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        
      ),
      backgroundColor: Colors.white,
      body: Container(
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topCenter,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          color: Colors.grey,
                          spreadRadius: 1,
                          offset: Offset(1, 1))
                    ]),
                child: Container(
                    child: Image.asset('images/app_images/hero2.png',
                        alignment: Alignment.center)),
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14.0),
                    child: Container(
                      child: Text(result,
                          textAlign: TextAlign.justify,
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 16)),
                    ),
                  ),
                ),
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Transform.scale(
          scale: 1.1,
          child: FloatingActionButton.extended(
            backgroundColor: primaryColor,
            icon: Icon(Icons.add),
            label: Text("Scan Checkpoint"),
            onPressed: scanQR,
          )),
    );
  }
}
