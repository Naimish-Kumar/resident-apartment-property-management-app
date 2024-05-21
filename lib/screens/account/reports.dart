import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/src/generated/accounts.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart'; 
import 'package:nb_utils/nb_utils.dart';

class ReportScreen extends StatefulWidget {
  @override
  _ReportScreen createState() => _ReportScreen();
}

class _ReportScreen extends State<ReportScreen> {
  AccountsList datalist = new AccountsList();
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
    RpcAccountsClient client = RpcAccountsClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResidenceAccountsLookupModel data =
        new ResidenceAccountsLookupModel();
    data.user = prefs.getString("uid") ?? "";
    data.residenceId = prefs.getString("rid") ?? "";
    appStore.setLoading(true);
    AccountsList response = await client.getAllAccountsReport(data,
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
        "Account Report",
        elevation: 0,
        showBack: true,
        backWidget: BackWidget(),
        color: primaryColor,
        
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
                                      icon: Icon(Icons.receipt_long_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                                    16.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(datalist.items[index].feeTitle,
                                            style: boldTextStyle()),
                                        12.height,
                                        Text(
                                            datalist
                                                .items[index].paymentFor.name,
                                            style: primaryTextStyle()),
                                      ],
                                    ).expand(),
                                    AppButton(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                              'RM ' +
                                                  datalist.items[index].fees
                                                      .toString(),
                                              style:
                                                  boldTextStyle(color: white)),
                                        ],
                                      ),
                                      width: context.width(),
                                      color: primaryColor,
                                      elevation: 0,
                                      onTap: () {},
                                    ).expand()
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    2.height,
                                    TextIcon(
                                      spacing: 10,
                                      onTap: () {},
                                      expandedText: true,
                                      prefix: Text('Status :'),
                                      text: datalist
                                          .items[index].paymentStatus.name,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    2.height,
                                    TextIcon(
                                      spacing: 10,
                                      onTap: () {},
                                      expandedText: true,
                                      prefix: Text('Description :'),
                                      text: datalist.items[index].description,
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
