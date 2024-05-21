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

class PropertyScreen extends StatefulWidget {
  @override
  _PropertyScreen createState() => _PropertyScreen();
}

class _PropertyScreen extends State<PropertyScreen> {
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
    final token = prefs.getString("AccessToken") ?? "";
    metadata['Authorization'] = "Bearer $token";
  }

  //region Methods
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
        "Active Work",
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
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.build_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                                    16.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(datalist.items[index].user.lastName,
                                            style: boldTextStyle()),
                                        12.height,
                                        Text(datalist.items[index].dateCreated,
                                            style: primaryTextStyle()),
                                      ],
                                    ).expand(),
                                    AppButton(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ic_show.iconImage(
                                              size: 18, color: white),
                                          8.width,
                                          Text('View',
                                              style:
                                                  boldTextStyle(color: white)),
                                        ],
                                      ),
                                      width: context.width(),
                                      color: primaryColor,
                                      elevation: 0,
                                      onTap: () {
                                        // ViewworkScreen(
                                        //   todo: datalist.items[index],
                                        // ).launch(context,
                                        //     isNewTask: true,
                                        //     pageRouteAnimation:
                                        //         PageRouteAnimation.Slide);
                                      },
                                    ).expand()
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    8.height,
                                    TextIcon(
                                      spacing: 10,
                                      onTap: () {},
                                      expandedText: true,
                                      prefix: Image.asset(ic_location,
                                          width: 20,
                                          height: 20,
                                          color: appStore.isDarkMode
                                              ? Colors.white
                                              : Colors.black),
                                      text: datalist.items[index].building.toString(),
                                    ),
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
