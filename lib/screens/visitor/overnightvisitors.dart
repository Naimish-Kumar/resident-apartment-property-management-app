import 'dart:async';  
import 'package:grpc/grpc.dart'; 
import 'package:url_launcher/url_launcher.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart'; 
import 'package:user_app/screens/dashboard/home_screen.dart'; 
import 'package:user_app/src/generated/visitor.pbgrpc.dart'; 
import 'package:user_app/utils/colors.dart'; 
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart'; 
 
 
 

class OvernightVisitorsScreen extends StatefulWidget {

  @override
  _VisitorsScreenScreenState createState() =>    _VisitorsScreenScreenState();
}

class _VisitorsScreenScreenState extends State<OvernightVisitorsScreen> {


  Future<void> _call(String mob) async {  

    final Uri dial = Uri.parse("tel://" + mob);
    if (!await launchUrl(dial)) {
      throw 'could not launch url';
    }
  }    
List<VisitorRequest> VisitorRequestListCheckin = []; 
  getCheckInunitList() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
    ResidenceVisitorLookupModel subcatdata = new ResidenceVisitorLookupModel();
    subcatdata.residenceId = prefs.getString("rid") ?? ""; 
    RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    VisitorsList responsedata = await client.getAllOvernightParkingVisitors(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      VisitorRequestListCheckin.clear();
      VisitorRequestListCheckin = responsedata.items;
    });
  }
 

  @override
  void initState() {
    super.initState();
    init();
     getCheckInunitList();
      
  }

  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = (prefs.getString("AccessToken") ?? "");
    metadata['Authorization'] = "Bearer $token";
  }

  void init() async {
    
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

 
 

  void registerUser() async {
    hideKeyboard(context);
  }

 

 
  //endregion

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: appBarWidget(
        "OverNight Parking",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        
      ),
      drawer: AppDrawer(),
      body: 
            VisitorRequestListCheckin.isEmpty
          ? const Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            ))
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: VisitorRequestListCheckin.length,
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

  ListTile(
                                      onTap: () {
                                      

                                         showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title:  Text(VisitorRequestListCheckin[index].unitId),
                        content: Text('Visitor Details'),
                        actions: <Widget>[
                           Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.account_circle,
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
                              child:  Text('Visitor : ' + VisitorRequestListCheckin[index].name,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                    Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.toll_outlined,
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
                                 // _call(datalist.items[index].mobileNumber);
                              },
                              child:  Text('Purpose : ' + VisitorRequestListCheckin[index].perpouseOfVisit.toString(),
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.home,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                       
                                      },
                                    ),
                                    10.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              
                              child:  Text('Visit By : '+ VisitorRequestListCheckin[index].visitBy.toString(),
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                  Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.numbers_outlined,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                       
                                      },
                                    ),
                                    10.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              
                              child:  Text('Vehicle No : '+ VisitorRequestListCheckin[index].vehicleNumber.toString(),
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.border_all_outlined,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                       
                                      },
                                    ),
                                    10.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              
                              child:  Text('Parking No : '+ VisitorRequestListCheckin[index].parkingId.toString(),
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),


                               

                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.watch,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                       
                                      },
                                    ),
                                    10.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              child:  Text( VisitorRequestListCheckin[index].checkIn.toString(),
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
 Divider(
                  color: Colors.black,
                ),
                         VisitorRequestListCheckin[index].ownerTenantIfo.owner.firstName != "" ?  Row(
                                  children: [
                                   
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              child:  Text('Owner : '+ VisitorRequestListCheckin[index].ownerTenantIfo.owner.firstName+' '+VisitorRequestListCheckin[index].ownerTenantIfo.owner.lastName+' (' +VisitorRequestListCheckin[index].ownerTenantIfo.owner.phoneNumber+')',
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                    10.width,
                                     IconButton(
                                      icon: Icon(Icons.call,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                          _call(VisitorRequestListCheckin[index].ownerTenantIfo.owner.phoneNumber);
                                      },
                                    ),
                                    
                                  ],
                                ):SizedBox(),

                                  VisitorRequestListCheckin[index].ownerTenantIfo.tenant.firstName != "" ?  Row(
                                  children: [
                                   
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              child:  Text('Tenant : '+ VisitorRequestListCheckin[index].ownerTenantIfo.tenant.firstName+' '+VisitorRequestListCheckin[index].ownerTenantIfo.tenant.lastName+' (' +VisitorRequestListCheckin[index].ownerTenantIfo.tenant.phoneNumber+')',
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                    10.width,
                                     IconButton(
                                      icon: Icon(Icons.call,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                        _call(VisitorRequestListCheckin[index].ownerTenantIfo.tenant.phoneNumber);
                                      },
                                    ),
                                    
                                  ],
                                ):SizedBox(),
                                
                                 Divider(
                  color: Colors.black,
                ),
                Divider(
                  color: Colors.black,
                ),
                 
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Close'),
                          ),
                        ],
                      ),
                    );
                                         },




                                      
                          leading:    
                                    IconButton(
                                      icon: Icon(Icons.notifications_none_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ) ,
                          
                          title: Text('Visitor : '+VisitorRequestListCheckin[index].name,
                                            style: boldTextStyle()),
                                             subtitle: Text('At : '+VisitorRequestListCheckin[index].checkIn,
                                            style: primaryTextStyle()),
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
