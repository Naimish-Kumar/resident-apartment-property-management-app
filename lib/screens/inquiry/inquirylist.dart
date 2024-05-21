import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/category/category_screen.dart';  
import 'package:user_app/src/generated/inquiry.pbgrpc.dart'; 
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart'; 
 

class InquiryListScreen extends StatefulWidget {
  @override
  _InquiryListScreen createState() => _InquiryListScreen();
}

class _InquiryListScreen extends State<InquiryListScreen> {
  InquirysList datalist = new InquirysList();
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
    RpcInquiryClient client = RpcInquiryClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResInquiryLookupModel data = new ResInquiryLookupModel();
    data.residenceId = prefs.getString("rid") ?? "";
 appStore.setLoading(true);
    InquirysList response = await client.getAllInquirys(data,
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
        "Inquiry Details",
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
            )):
         
            ListView.builder(
  itemCount:datalist.items.length,
  shrinkWrap: true,
  padding: EdgeInsets.only(top: 10,bottom: 10),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return Container(
      padding: EdgeInsets.only(left: 5,right: 14,top: 10,bottom: 10),
      child:Column(children: [

        ExpansionTile(
  leading: Icon(Icons.add ,color: primaryColor,),
  title: Text(datalist.items[index].subject,
                                            style: boldTextStyle()),
  trailing: Icon(Icons.arrow_drop_down),
  backgroundColor: Colors.grey[200],
  children: <Widget>[
    ListTile(
      title: Text(datalist.items[index].message,
                                            style: primaryTextStyle()),
      onTap: () {
        // Do something when item 1 is tapped
      },
    ),
    
  ],
),
   Divider(
                  color: Colors.black,
                )     
        
     
      
       ],),
      
      
      
    );
  },
),
            
    );
  }
}
 