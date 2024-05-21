import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/src/generated/panic.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';



class PanicScreen extends StatefulWidget {
  @override
  State<PanicScreen> createState() => _PanicScreen();
}

class _PanicScreen extends State<PanicScreen> {
  bool isactive = false;
  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = (prefs.getString("AccessToken") ?? "");
    metadata['Authorization'] = "Bearer $token";
  }
  void Paniccall() async {
    if (!isactive) {

     SharedPreferences prefs =
                                     await SharedPreferences.getInstance();
                                 RpcPanicClient client =
                                     RpcPanicClient(ClientChannel(Url,
                                         port: Port,
                                         options: const ChannelOptions(
                                             credentials: ChannelCredentials
                                                 .insecure())));
                                final PanicRequest data =
                                     new PanicRequest();
                                 data.user = prefs.getString("uid") ?? "";
                                 data.residenceId = prefs.getString("rid") ?? "";
                                  
                                PanicResponse response =
                                     await client.insertPanic(data,
                                         options: (CallOptions(
                                             providers: [_provider])));
                              
                                 // ignore: unnecessary_null_comparison
                                 if (response.isOk) {
                                   
                                  setState(() {
        isactive = true;
      });
                                     toast(response.response);
                                 } else {
                                   
                                   toast(response.error.message);
                                 }
      
     
    } else {
      setState(() {
        isactive = false;
         toast('Panic Alert Off');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget(
        "Panic",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        
      ),
      drawer: AppDrawer(),
      body: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 650,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          const ListTile(
                            title: Center(
                                child: Text(
                              'PANIC ALERT',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          const SizedBox(height: 7),
                          const Divider(
                            color: Color.fromARGB(255, 255, 255, 255),
                            height: 36,
                          ),
                          const SizedBox(height: 6),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: InkWell(
                              onTap: () {
                                Paniccall();
                              },
                              child: isactive == true
                                  ? Icon(
                                      Icons.power_settings_new,
                                      size: 200,
                                      color: Colors.red,
                                    )
                                  : Icon(
                                      Icons.power_settings_new,
                                      size: 200,
                                      color: Colors.green,
                                    ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          ListTile(
                            leading: ConstrainedBox(
                                constraints: const BoxConstraints(
                                    minWidth: 20, minHeight: 20),
                                child: Icon(
                                  Icons.power_settings_new,
                                  size: 30,
                                  color: primaryColor,
                                )),
                            title: const Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: const Text(
                              'Panic Time only use this Alert.this will send alert to guard.',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(255, 255, 255, 255),
                            height: 36,
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
