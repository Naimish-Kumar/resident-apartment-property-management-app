import 'dart:async';
 
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/dashboard/home_screen.dart'; 
import 'package:user_app/src/generated/unit.pbgrpc.dart'; 
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/extensions/string_extensions.dart'; 
import 'package:user_app/utils/images.dart';
 
 

class PropertyListScreen extends StatefulWidget {
  const PropertyListScreen({Key? key}) : super(key: key);
 
  @override
  _PropertyListScreen createState() => _PropertyListScreen();
}

class _PropertyListScreen extends State<PropertyListScreen> {
  UnitsList datalist = new UnitsList();
 
  @override
  void initState() {
    super.initState();  
     Getlist();   
  } 
  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = (prefs.getString("AccessToken") ?? "");
    metadata['Authorization'] = "Bearer $token";
  }
  void Getlist() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcUnitClient client = RpcUnitClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResidentUnitListOwnerLookupModel data = new ResidentUnitListOwnerLookupModel();
    data.userId = prefs.getString("uid") ?? "";
    data.residentId = prefs.getString("rid") ?? "";
    appStore.setLoading(true);
    UnitsList response = await client.getResidentOwnerUnitListById(data,
        options: (CallOptions(providers: [_provider])));
    
    
    if (response.items.isNotEmpty) {
      setState(() {
        datalist = response;
      });
      appStore.setLoading(false);
    } else {
      appStore.setLoading(false);
      toast(response.error.message);
    }
  }

  @override
  void dispose() {
    setStatusBarColor(primaryColor, statusBarIconBrightness: Brightness.light);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        "Tenant Request",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        systemUiOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness:
                appStore.isDarkMode ? Brightness.light : Brightness.dark,
            statusBarColor: context.scaffoldBackgroundColor),
      ),
      drawer: AppDrawer(),
      body:   datalist.items.isEmpty
          ? const Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            ))
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: datalist.items.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          8.height,
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration:
                                boxDecorationDefault(color: context.cardColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.account_circle,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                                    16.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Tenant Name : '+datalist.items[index].user.lastName,
                                            style: boldTextStyle()),
                                             12.height,
                                        Text('Mobile : '+datalist.items[index].user.phoneNumber.toString(),
                                            style: primaryTextStyle()),
                                             Text('Email : '+datalist.items[index].user.email.toString(),
                                            style: primaryTextStyle()),
                                        12.height,
                                        Text(datalist.items[index].dateCreated,
                                            style: primaryTextStyle()),
                                      ],
                                    ).expand(),
                                    Image.asset(ic_verified,
                                        height: 24,
                                        width: 24,
                                        color: inProgressColor),
                                  ],
                                ),
                                 AppButton(
                               child: Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   ic_shield_done.iconImage(
                                       size: 18, color: Colors.white),
                                   8.width,
                                    Text('Active',
                                           style: boldTextStyle(color: white))
                                       ,
                                 ],
                               ),
                               width: context.width(),
                               color: primaryColor,
                               elevation: 0,
                               onTap: () async {
                                 
                                 RpcUnitClient client =
                                     RpcUnitClient(ClientChannel(Url,
                                         port: Port,
                                         options: const ChannelOptions(
                                             credentials: ChannelCredentials
                                                 .insecure())));
                                final UnitRequest data =
                                     new UnitRequest();
                                 data.userId = datalist.items[index].user.userId; 
                                UnitResponse response =
                                     await client.updateTenantUnit(data,
                                         options: (CallOptions(
                                             providers: [_provider])));
                                 log("Login Response $response");
                                 // ignore: unnecessary_null_comparison
                                 if (response.isOk) {
                                   appStore.setLoading(false);
                                    showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Account Active'),
                      content:  Text(response.response),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                                  
                                 } else {
                                   appStore.setLoading(false);
                                   toast(response.error.message);
                                 }
                               },
                             ),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },

              //////////
            ),
    );
      
  }
}
