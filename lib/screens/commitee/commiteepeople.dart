import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/category/category_screen.dart'; 
import 'package:user_app/src/generated/commitee.pbgrpc.dart'; 
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class CommiteeScreen extends StatefulWidget {
  @override
  _CommiteeScreen createState() => _CommiteeScreen();
}

class _CommiteeScreen extends State<CommiteeScreen> {
  CommiteesList datalist = new CommiteesList();
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

  //region Methods
  void Getlist() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcCommiteeClient client = RpcCommiteeClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResCommiteeLookupModel data = new ResCommiteeLookupModel();
    data.residenceId = prefs.getString("rid") ?? "";
    appStore.setLoading(true);
    CommiteesList response = await client.getAllCommitees(data,
        options: (CallOptions(providers: [_provider])));
    log("Login Response $response");
    // ignore: unnecessary_null_comparison
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
        "Committee",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => CategoryScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        
      ),
      drawer: AppDrawer(),
      body: datalist.items.isEmpty
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
                            padding: EdgeInsets.all(5),
                            decoration:
                                boxDecorationDefault(color: context.cardColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                     ListTile(
                          leading:   IconButton(
                                      icon: Icon(Icons.account_circle_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                          
                          title: Text(datalist.items[index].name,
                                            style: boldTextStyle()),
                                             subtitle: Text(datalist.items[index].unit,
                                            style: primaryTextStyle()),
                        ),
                                   
                                      
                                
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.business_outlined,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {},
                                    ),
                                    10.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              child:  Text(datalist.items[index].position,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.phone_android,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {},
                                    ),
                                    10.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              child:  Text(datalist.items[index].contactNumber,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
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
