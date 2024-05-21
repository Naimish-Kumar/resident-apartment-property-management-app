import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/screens/technician/view_Completework.dart';
import 'package:user_app/src/generated/technician.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/images.dart';

class CompleteworkScreen extends StatefulWidget {
  @override
  _CompleteworkScreen createState() => _CompleteworkScreen();
}

class _CompleteworkScreen extends State<CompleteworkScreen> {
  TechniciansList datalist = new TechniciansList();
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
    RpcTechnicianClient client = RpcTechnicianClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final TechnicianLookupModel data = new TechnicianLookupModel();
    data.technicianId = prefs.getString("uid") ?? "";
    appStore.setLoading(true);
    TechniciansList response = await client.getCompleteTechnicianById(data,
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

//endregion

  @override
  void dispose() {
    setStatusBarColor(primaryColor, statusBarIconBrightness: Brightness.light);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        "Complete Work",
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
                            padding: EdgeInsets.all(16),
                            decoration:
                                boxDecorationDefault(color: context.cardColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


  InkWell(
  onTap: (){
  ViewworkCompleteScreen(
                                           todo: datalist.items[index],
                                         ).launch(context,
                                             isNewTask: true,
                                             pageRouteAnimation:
                                                 PageRouteAnimation.Slide);
  },
  child: Row(
          children: <Widget>[
           
            Expanded(
              child: Row(
                children: <Widget>[
                  
                Image.asset(ic_verified,
                                         height: 50,
                                         width: 50,
                                       color: completedColor),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(datalist.items[index].jobTitle, style: boldTextStyle(size: 16),),
                          SizedBox(height: 6,),
                          Text('Priorities : '+datalist.items[index].priorities.toString(),style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(datalist.items[index].dateCreated,style: TextStyle(fontSize: 12,fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
          ],
        ),
),
     



                              //   Row(
                              //     children: [
                              //       IconButton(
                              //         icon: Icon(Icons.article_outlined,
                              //             color: primaryColor, size: 50.0),
                              //         onPressed: () {},
                              //       ),
                              //       16.width,
                              //       Column(
                              //         crossAxisAlignment:
                              //             CrossAxisAlignment.start,
                              //         children: [
                              //           Text(datalist.items[index].jobTitle,
                              //               style: boldTextStyle()),
                              //                12.height,
                              //           Text(datalist.items[index].priorities.toString(),
                              //               style: primaryTextStyle()),
                              //           12.height,
                              //           Text(datalist.items[index].dateCreated,
                              //               style: primaryTextStyle()),
                              //         ],
                              //       ).expand(),
                              //       Image.asset(ic_verified,
                              //           height: 24,
                              //           width: 24,
                              //           color: completedColor),
                              //     ],
                              //   ),
                              //   Column(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     children: [
                              //       8.height,
                              //       TextIcon(
                              //         spacing: 10,
                              //         onTap: () {},
                              //         expandedText: true,
                              //         prefix: Image.asset(ic_location,
                              //             width: 20,
                              //             height: 20,
                              //             color: appStore.isDarkMode
                              //                 ? Colors.white
                              //                 : Colors.black),
                              //         text: datalist.items[index].managementId,
                              //       ),
                              //     ],
                              //   ),
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
