 import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/category/category_screen.dart'; 
import 'package:user_app/src/generated/providerservice.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';


class ServiceProviderScreen extends StatefulWidget {
  @override
  _ServiceProviderScreen createState() => _ServiceProviderScreen();
}

class _ServiceProviderScreen extends State<ServiceProviderScreen> {
  SerProvidersList datalist = new SerProvidersList();
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
    RpcSerProviderClient client = RpcSerProviderClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResSerProviderLookupModel data = new ResSerProviderLookupModel();
    data.residenceId = prefs.getString("rid") ?? "";
    appStore.setLoading(true);
    SerProvidersList response = await client.getAllSerProviders(data,
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

 

  void _openUrl(Uri url) async {
     final Uri dial = Uri.parse("https://" + url.toString());
    if (!await launchUrl(dial)) throw 'Could not launch $url';
  }
    Future<void> _call(String mob) async {
   

    final Uri dial = Uri.parse("tel://" + mob);
    if (!await launchUrl(dial)) {
      throw 'could not launch url';
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
        "Service Providers",
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
                        title:  Text(datalist.items[index].companyName),
                        content: Text(datalist.items[index].description),
                        actions: <Widget>[
 
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
                              child:  Text(datalist.items[index].natureofbusiness,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.link,
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
                                _openUrl(Uri.parse(datalist.items[index].link));
                              },
                              child:  Text(datalist.items[index].link,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.phone,
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
                              
                               _call(datalist.items[index].phoneNumber);
                              },
                              child:  Text(datalist.items[index].phoneNumber,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.card_travel_outlined,
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
                              child:  Text(datalist.items[index].price,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                

                           
        TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Close'),
                          ),
                        ],
                      ));
                                        
                                      },
                          trailing:   IconButton(
                                      icon: Icon(Icons.handyman_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                          
                          title: Text(datalist.items[index].companyName,
                                            style: boldTextStyle()),
                                             subtitle: Text(datalist.items[index].natureofbusiness,
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
