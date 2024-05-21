import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/src/generated/residence.pbgrpc.dart'; 
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/images.dart';

class ParkingScreen extends StatefulWidget {
  @override
  _ParkingScreen createState() => _ParkingScreen();
}

class _ParkingScreen extends State<ParkingScreen> {
List<ResidenceParkingResponse> ResidenceParkingResponseList =[];
  @override
  void initState() {
    super.initState();
    getParkingutility();
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
  Future<void> getParkingutility() async {
    appStore.setLoading(true);
      SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcResidenceClient client = RpcResidenceClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResidenceLookupModel data = new ResidenceLookupModel();
    data.residenceId = prefs.getString("rid") ?? "";
    appStore.setLoading(true);
    
    ResidencesParkingList parkingresponse = await client.getResidenceAvailableParkingListById(data,
        options: (CallOptions(providers: [_provider])));
        setState(() {
          ResidenceParkingResponseList = parkingresponse.items;
        });
    
    
    appStore.setLoading(false);
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
        "Parking",
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
      body: ResidenceParkingResponseList.isEmpty
          ? const Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            ))
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: ResidenceParkingResponseList.length,
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
                                      icon: Icon(Icons.home,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                                    16.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(ResidenceParkingResponseList[index].parkingName,
                                            style: boldTextStyle()),
                                             12.height,
                                        Text('Lot No : '+ResidenceParkingResponseList[index].parkingNumber.toString(),
                                            style: primaryTextStyle()),
                                        12.height,
                                         
                                      ],
                                    ).expand(),
                                   ResidenceParkingResponseList[index].visitorId == "00000000-0000-0000-0000-000000000000" ? Image.asset(ic_verified,
                                        height: 24,
                                        width: 24,
                                        color: completedColor): Image.asset(ic_verified,
                                        height: 24,
                                        width: 24,
                                        color: rejectedColor)
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
               
            ),
    );
  }
}
