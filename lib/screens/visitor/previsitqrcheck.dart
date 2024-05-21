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
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/screens/visitor/Previsitorststus.dart'; 
import 'package:user_app/src/generated/visitor.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';

class Previsitqrcheck extends StatefulWidget {
  @override
  _PrevisitqrcheckState createState() => _PrevisitqrcheckState();
}
  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = (prefs.getString("AccessToken") ?? "");
    metadata['Authorization'] = "Bearer $token";
  }
class _PrevisitqrcheckState extends State<Previsitqrcheck> {
  String result = "Scan your Pre Visit QR Code";

 

  Future scanQR() async {
    try {
      var qrResult = await BarcodeScanner.scan();

      setState(() {
        result = qrResult.rawContent;
        //result = "6c2e637f-499b-4709-95de-a2c729e79c2d";
      });

      RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
          port: Port,
          options: const ChannelOptions(
              credentials: ChannelCredentials.insecure())));

      final VisitorLookupModel data = new VisitorLookupModel();
      data.visitorId = result;
      appStore.setLoading(true);
      VisitorRequest response = await client.getVisitorById(data , options: (CallOptions(providers: [_provider])));
      log("Response $response");
      // ignore: unnecessary_null_comparison
      if (response.residenceId != null && response.residenceId != "") {
         appStore.setLoading(false);
        PrevisitstatusScreen(
          vdata: response,
           
        ).launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide);
      } else {
        setState(() {
          result = '';
        });
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Scan Property'),
            content: const Text('Invaild Property Qrcode'),
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
        "Scan QR Code",
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
            label: Text("Check Pre Visitor"),
            onPressed: scanQR,
          )),
    );
  }
}
