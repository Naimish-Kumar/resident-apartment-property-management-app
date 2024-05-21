import 'dart:async';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/component/loader_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/account/viewaccount.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/src/generated/accounts.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart'; 
import 'package:nb_utils/nb_utils.dart';

class MaintenanceScreen extends StatefulWidget {
  final bool? hideAppBar;

  MaintenanceScreen({this.hideAppBar});
  @override
  _MaintenanceScreen createState() => _MaintenanceScreen();
}

class _MaintenanceScreen extends State<MaintenanceScreen>  with SingleTickerProviderStateMixin  {
   TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
    Getlist();
  }
  UnitAccountsResponse datalist = new UnitAccountsResponse();
 
  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("AccessToken") ?? "";
    metadata['Authorization'] = "Bearer $token";
  }

  //region Methods
  void Getlist() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcAccountsClient client = RpcAccountsClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final UnitAccountsRequest data =
        new UnitAccountsRequest();
    data.unitId = prefs.getString("uid") ?? "";
    
    appStore.setLoading(true);
    UnitAccountsResponse response = await client.getUserUnitAccountsById(data,
        options: (CallOptions(providers: [_provider])));
    log("Login Response $response");
    // ignore: unnecessary_null_comparison
    if (response.error.isOk) {
      appStore.setLoading(false);
      toast(response.error.message);
    } else {
       setState(() {
        datalist = response;
      });
      appStore.setLoading(false);

     
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
        "Accounts",
        elevation: 0,
        color: primaryColor,
        showBack: true,
        backWidget: BackWidget(
          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        
      ),
      drawer: AppDrawer(),
      body:  Column(
           children:[
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                    children: [
                      Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 229, 224, 224)),
                       borderRadius: BorderRadius.circular(15),
                         color:  Color.fromARGB(255, 255, 255, 255),
                           
                      ),
                      child:Column(
                        children: [
                           new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: new Text('RM '+datalist.maintainPending,style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.home_outlined,
                                      color:   primaryColor,

                                      size: 45,),
                                    ),
                                  ]
                                  ),
                                  Text("Maintenance",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left,),
                                ],
                            ),
               
                      ),
                     ),
                     SizedBox( 
                      width: 10,
                     ),
                                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 209, 195, 195)),
                       borderRadius: BorderRadius.circular(15),
                         color:  Color.fromARGB(255, 255, 255, 255),
                      ),
                      child:Column(
                        children: [
                           new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: new Text('RM '+datalist.facilitiesUsagePending,style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.door_back_door_outlined,
                                      color:    primaryColor,

                                      size: 45,
                                      ),
                                    ),
                                  ]
                                  ),
                                  Text("Facilities(usage)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left,),
                                ],
                            ),
               
                      ),
                     ),
                    
                    ],
               ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                    children: [
                      Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 229, 224, 224)),
                       borderRadius: BorderRadius.circular(15),
                         color:  Color.fromARGB(255, 255, 255, 255),
                           
                      ),
                      child:Column(
                        children: [
                           new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: new Text('RM '+datalist.renovationDeposite,style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.build_outlined,
                                      color:   primaryColor,

                                      size: 45,),
                                    ),
                                  ]
                                  ),
                                  Text("Renovation(Deposit)",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left,),
                                ],
                            ),
               
                      ),
                     ),
                     SizedBox( 
                      width: 10,
                     ),
                                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Container(
                        height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 209, 195, 195)),
                       borderRadius: BorderRadius.circular(15),
                         
                      ),
                      child:Column(
                        children: [
                           new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: new Text('RM '+datalist.penantyPending,style: TextStyle(fontWeight: FontWeight.bold,
                                      fontSize: 20)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.article_outlined,
                                      color:    primaryColor,

                                      size: 45,
                                      ),
                                    ),
                                  ]
                                  ),
                                  Text("Other Pending",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.left,),
                                ],
                            ),
               
                      ),
                     ),
                    
                    ],
               ),
            ),
           TabBar(
            unselectedLabelColor: Colors.black,
            labelColor:primaryColor,
            tabs:   [
              Tab(
                icon: Icon(Icons.home_outlined),
                
              ),
              Tab(
                icon: Icon(
                  Icons.build_outlined,
                  
                ),
                
              ),
              Tab(
                icon: Icon(
                  Icons.door_back_door_outlined,
                ),
               
              ),
              Tab(
                icon: Icon(
                  Icons.article_outlined,
                ),
               
              ),
            ],
            controller: tabController,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children:   [
                datalist.maintainItems.isEmpty

          ? Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            )):
              ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: datalist.maintainItems.length,
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
  ViewAccountScreen(
                                            todo: datalist.maintainItems[index],
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
                  
                 IconButton(
                                      icon: Icon(Icons.home_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(datalist.maintainItems[index].feeTitle, style: boldTextStyle(size: 16),),
                          SizedBox(height: 6,),
                          Text('Status : '+datalist.maintainItems[index].paymentStatus.toString(),style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('RM '+datalist.maintainItems[index].fees.toString(),style: TextStyle(fontSize: 15,fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
          ],
        ),
),
     
                                // Row(
                                //   children: [
                                //     IconButton(
                                //       icon: Icon(Icons.home_work_outlined,
                                //           color: primaryColor, size: 50.0),
                                //       onPressed: () {},
                                //     ),
                                //     16.width,
                                //     Column(
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.start,
                                //       children: [
                                //         Text(datalist.maintainItems[index].feeTitle,
                                //             style: boldTextStyle()),
                                //         12.height,
                                //         Text(
                                //             datalist
                                //                 .maintainItems[index].paymentFor.name,
                                //             style: primaryTextStyle()),
                                //       ],
                                //     ).expand(),
                                //     AppButton(
                                //       child: Row(
                                //         mainAxisSize: MainAxisSize.min,
                                //         children: [
                                //           Text(
                                //               'RM ' +
                                //                   datalist.maintainItems[index].fees
                                //                       .toString(),
                                //               style:
                                //                   boldTextStyle(color: white)),
                                //         ],
                                //       ),
                                //       width: context.width(),
                                //       color: primaryColor,
                                //       elevation: 0,
                                //       onTap: () {},
                                //     ).expand()
                                //   ],
                                // ),
                                // Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: [
                                //     2.height,
                                //     TextIcon(
                                //       spacing: 10,
                                //       onTap: () {},
                                //       expandedText: true,
                                //       prefix: Text('Status :'),
                                //       text: datalist
                                //           .maintainItems[index].paymentStatus.name,
                                //     ),
                                //   ],
                                // ),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Observer(
                        builder: (_) =>
                            LoaderWidget().center().visible(appStore.isLoading))
                  ],
                );
              },
            ),
                  datalist.renovationItems.isEmpty

          ? Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            )):
              ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: datalist.renovationItems.length,
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
  ViewAccountScreen(
                                            todo: datalist.renovationItems[index],
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
                  
                 IconButton(
                                      icon: Icon(Icons.build_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(datalist.renovationItems[index].feeTitle, style: boldTextStyle(size: 16),),
                          SizedBox(height: 6,),
                          Text('Status : '+datalist.renovationItems[index].paymentStatus.toString(),style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('RM '+datalist.renovationItems[index].fees.toString(),style: TextStyle(fontSize: 15,fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
          ],
        ),
),
     
                                // Row(
                                //   children: [
                                //     IconButton(
                                //       icon: Icon(Icons.home_work_outlined,
                                //           color: primaryColor, size: 50.0),
                                //       onPressed: () {},
                                //     ),
                                //     16.width,
                                //     Column(
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.start,
                                //       children: [
                                //         Text(datalist.maintainItems[index].feeTitle,
                                //             style: boldTextStyle()),
                                //         12.height,
                                //         Text(
                                //             datalist
                                //                 .maintainItems[index].paymentFor.name,
                                //             style: primaryTextStyle()),
                                //       ],
                                //     ).expand(),
                                //     AppButton(
                                //       child: Row(
                                //         mainAxisSize: MainAxisSize.min,
                                //         children: [
                                //           Text(
                                //               'RM ' +
                                //                   datalist.maintainItems[index].fees
                                //                       .toString(),
                                //               style:
                                //                   boldTextStyle(color: white)),
                                //         ],
                                //       ),
                                //       width: context.width(),
                                //       color: primaryColor,
                                //       elevation: 0,
                                //       onTap: () {},
                                //     ).expand()
                                //   ],
                                // ),
                                // Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: [
                                //     2.height,
                                //     TextIcon(
                                //       spacing: 10,
                                //       onTap: () {},
                                //       expandedText: true,
                                //       prefix: Text('Status :'),
                                //       text: datalist
                                //           .maintainItems[index].paymentStatus.name,
                                //     ),
                                //   ],
                                // ),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Observer(
                        builder: (_) =>
                            LoaderWidget().center().visible(appStore.isLoading))
                  ],
                );
              },
            ),
               
                  datalist.facilitiesItems.isEmpty

          ? Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            )):
              ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: datalist.facilitiesItems.length,
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
  ViewAccountScreen(
                                            todo: datalist.facilitiesItems[index],
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
                  
                 IconButton(
                                      icon: Icon(Icons.door_back_door_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(datalist.facilitiesItems[index].feeTitle, style: boldTextStyle(size: 16),),
                          SizedBox(height: 6,),
                          Text('Status : '+datalist.facilitiesItems[index].paymentStatus.toString(),style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('RM '+datalist.facilitiesItems[index].fees.toString(),style: TextStyle(fontSize: 15,fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
          ],
        ),
),
     
                                // Row(
                                //   children: [
                                //     IconButton(
                                //       icon: Icon(Icons.home_work_outlined,
                                //           color: primaryColor, size: 50.0),
                                //       onPressed: () {},
                                //     ),
                                //     16.width,
                                //     Column(
                                //       crossAxisAlignment:
                                //           CrossAxisAlignment.start,
                                //       children: [
                                //         Text(datalist.maintainItems[index].feeTitle,
                                //             style: boldTextStyle()),
                                //         12.height,
                                //         Text(
                                //             datalist
                                //                 .maintainItems[index].paymentFor.name,
                                //             style: primaryTextStyle()),
                                //       ],
                                //     ).expand(),
                                //     AppButton(
                                //       child: Row(
                                //         mainAxisSize: MainAxisSize.min,
                                //         children: [
                                //           Text(
                                //               'RM ' +
                                //                   datalist.maintainItems[index].fees
                                //                       .toString(),
                                //               style:
                                //                   boldTextStyle(color: white)),
                                //         ],
                                //       ),
                                //       width: context.width(),
                                //       color: primaryColor,
                                //       elevation: 0,
                                //       onTap: () {},
                                //     ).expand()
                                //   ],
                                // ),
                                // Column(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
                                //   children: [
                                //     2.height,
                                //     TextIcon(
                                //       spacing: 10,
                                //       onTap: () {},
                                //       expandedText: true,
                                //       prefix: Text('Status :'),
                                //       text: datalist
                                //           .maintainItems[index].paymentStatus.name,
                                //     ),
                                //   ],
                                // ),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Observer(
                        builder: (_) =>
                            LoaderWidget().center().visible(appStore.isLoading))
                  ],
                );
              },
            ),
                datalist.penantyItems.isEmpty

          ? Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            )):
              ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: datalist.penantyItems.length,
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
  ViewAccountScreen(
                                            todo: datalist.penantyItems[index],
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
                  
                 IconButton(
                                      icon: Icon(Icons.article_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(datalist.penantyItems[index].feeTitle, style: boldTextStyle(size: 16),),
                          SizedBox(height: 6,),
                          Text('Status : '+datalist.penantyItems[index].paymentStatus.toString(),style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text('RM '+datalist.penantyItems[index].fees.toString(),style: TextStyle(fontSize: 15,fontWeight: 1==1?FontWeight.bold:FontWeight.normal),),
          ],
        ),
),
     
                         
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Observer(
                        builder: (_) =>
                            LoaderWidget().center().visible(appStore.isLoading))
                  ],
                );
              },
            ),
                
              ],
            ),
          ),
        
      
          ])
          
    );
  }
}
