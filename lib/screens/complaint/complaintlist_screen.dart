import 'dart:async';
import 'dart:typed_data';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/category/category_screen.dart';
import 'package:user_app/screens/complaint/addcomplient.dart'; 
import 'package:user_app/src/generated/complaint.pbgrpc.dart'; 
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart'; 
 

class ComplientListScreen extends StatefulWidget {
  @override
  _ComplientListScreen createState() => _ComplientListScreen();
}

class _ComplientListScreen extends State<ComplientListScreen> {
  ComplaintsList datalist = new ComplaintsList();
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
    final token = prefs.getString("AccessToken") ?? "";
    metadata['Authorization'] = "Bearer $token";
  }

  //region Methods
  void Getlist() async {
   
    SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcComplaintClient client = RpcComplaintClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResComplaintLookupModel data = new ResComplaintLookupModel();
    data.residenceId = prefs.getString("rid") ?? "";
 appStore.setLoading(true);
    ComplaintsList response = await client.getAllComplaints(data,
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
        "Complain Status",
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
                            padding: EdgeInsets.all(2),
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
                        title:  Text(datalist.items[index].subject),
                        content: Text(datalist.items[index].dateCreated),
                        actions: <Widget>[
                           Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.note_add,
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
                              child:  Text(datalist.items[index].message,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                 Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.star_outline_outlined,
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
                              child:  Text(datalist.items[index].status.toString(),
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                    8.height,
                                  
                                  

                                  ],
                                ),
                                    
                                   Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.camera,
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
                              child:  Center(
    child:Image.memory(
            Uint8List.fromList(datalist.items[index].complaintDocs[0].file),
            width: 300,
            height: 250,
            fit: BoxFit.contain,
          )),)
                                      ],
                                    ).expand(), 
                                  ],
                                ), 
                                
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
 
                                         
                                         
                                         }, 
                                      
                          leading:    
                                    IconButton(
                                      icon: Icon(Icons.note_add,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ) ,
                          
                          title: Text('Complient : '+datalist.items[index].subject,
                                            style: boldTextStyle()),
                                             subtitle: Text('Status : '+ datalist.items[index].status.toString(),
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

            
            ),
             floatingActionButton: FloatingActionButton(
        onPressed: () {
          
         AddComplientScreen().launch(context,
                    pageRouteAnimation: PageRouteAnimation.Slide);
        },
        backgroundColor:primaryColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
