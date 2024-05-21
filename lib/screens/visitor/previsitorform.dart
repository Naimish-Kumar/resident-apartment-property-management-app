import 'dart:async';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/model/utility_list.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/src/generated/residence.pbgrpc.dart';
import 'package:user_app/src/generated/unit.pbgrpc.dart';
import 'package:user_app/src/generated/utility.pbenum.dart';
import 'package:user_app/src/generated/visitor.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/extensions/string_extensions.dart';
import 'package:user_app/utils/images.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PreVisitorsScreen extends StatefulWidget {
  const PreVisitorsScreen({Key? key}) : super(key: key);

  @override
  _PreVisitorsScreenScreenState createState() =>
      _PreVisitorsScreenScreenState();
}

class _PreVisitorsScreenScreenState extends State<PreVisitorsScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController Fullname = TextEditingController();
  TextEditingController IcNumber = TextEditingController();
  TextEditingController VisiteBy = TextEditingController();
  TextEditingController VisitFor = TextEditingController();
  TextEditingController VehicleNo = TextEditingController();

  FocusNode fullname = FocusNode();
  FocusNode icNumber = FocusNode();
  FocusNode visiteBy = FocusNode();
  FocusNode visitFor = FocusNode();
  FocusNode vehicleNo = FocusNode();

  String? fullnames, icNumbers, VisiteBys, VisitFors;
  String VehicleNos = "";

  List<VisitorRequest> VisitorRequestListCheckin = [];
  List<VisitorRequest> VisitorRequestListCheckout = [];

  List<ResBuilding> UnitsLists = [];
  List<ResidenceParkingResponse> ResidenceParkingResponseList = [];
  List<UnitRequest> roomList = [];
  ResidencesParkingList residenceParkingResponse = new ResidencesParkingList();

  List<RList> VisitForList = [];
  List<RoleList> visiteByList = [];
  RList? selectvisitefor;
  RoleList? selectvisitorby;
  ResidenceParkingResponse? parking;

  bool isAcceptedTc = false;
  ResBuilding? selectbuilding;
  UnitRequest? selectrace;
  UnitsList subresdata = new UnitsList();

  getCheckunitList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    VisitorRequest subcatdata = new VisitorRequest();
    subcatdata.residenceId = prefs.getString("rid") ?? "";
    subcatdata.userId = prefs.getString("uid") ?? "";

    RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    VisitorsList responsedata = await client.getAllVisitorsByUserId(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      VisitorRequestListCheckin.clear();
      VisitorRequestListCheckin = responsedata.items;
    });
  }

  getunitList(String cat) async {
    UnitListLookupModel subcatdata = new UnitListLookupModel();
    subcatdata.buildingId = cat;
    RpcUnitClient client = RpcUnitClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    UnitsList responsedata = await client.getUnitListById(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      roomList.clear();
      roomList = responsedata.items;
    });
  }

  @override
  void initState() {
    super.initState();
    init();
    getCheckunitList();
  }

  Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = (prefs.getString("AccessToken") ?? "");
    metadata['Authorization'] = "Bearer $token";
  }

  void init() async {
    await getutility();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
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

    ResidencesParkingList parkingresponse =
        await client.getResidenceAvailableParkingListById(data,
            options: (CallOptions(providers: [_provider])));
    setState(() {
      ResidenceParkingResponseList = parkingresponse.items;
    });

    appStore.setLoading(false);
  }

  Future<void> getutility() async {
    appStore.setLoading(true);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcResidenceClient client = RpcResidenceClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResidenceLookupModel data = new ResidenceLookupModel();
    data.residenceId = prefs.getString("rid") ?? "";
    appStore.setLoading(true);
    ResidenceRequest response = await client.getResidenceById(data,
        options: (CallOptions(providers: [_provider])));
    log("Response $response");
    setState(() {
      UnitsLists = response.resBuilding;
    });

    setState(() {
      //Role
      RoleList role1 = new RoleList(id: 1, name: "Walk In");
      visiteByList.add(role1);
      RoleList role2 = new RoleList(id: 2, name: "Bike");
      visiteByList.add(role2);
      RoleList role3 = new RoleList(id: 3, name: "Car");
      visiteByList.add(role3);

      RList r1 = new RList(id: 1, name: "Delivery");
      VisitForList.add(r1);
      RList r2 = new RList(id: 2, name: "Service");
      VisitForList.add(r2);
      // RList r3 = new RList(id: 3, name: "Pick Up");
      // VisitForList.add(r3);
      // RList r4 = new RList(id: 4, name: "Drop Off");
      // VisitForList.add(r4);
      RList r5 = new RList(id: 3, name: "Family And Friends");
      VisitForList.add(r5);
    });
    appStore.setLoading(false);
  }

  void registerUser() async {
    hideKeyboard(context);
  }

  Future<void> registerWithOTP() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      hideKeyboard(context);
      //appStore.setLoading(true);

      return;
    }
  }

  Widget _buildFormWidget() {
    return Column(
      children: [
        16.height,
        AppTextField(
          textFieldType: TextFieldType.NAME,
          controller: Fullname,
          focus: fullname,
          nextFocus: icNumber,
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: 'Full Name'),
          suffix: ic_profile2.iconImage(size: 10).paddingAll(14),
          onChanged: (p0) => fullnames = p0,
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.NAME,
          controller: IcNumber,
          focus: icNumber,
          nextFocus: visitFor,
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: 'IC Number'),
          onChanged: (p0) => icNumbers = p0,
        ),
        16.height,
        DropdownButtonFormField<RList>(
          decoration: inputDecoration(context, hint: "Perpouse Of Visit"),
          isExpanded: true,
          value: selectvisitefor,
          dropdownColor: context.cardColor,
          items: VisitForList.map((RList e) {
            return DropdownMenuItem<RList>(
              value: e,
              child: Text(
                e.name,
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (RList? value) async {
            hideKeyboard(context);
            selectvisitefor = value;

            setState(() {});
          },
        ),
        16.height,
        DropdownButtonFormField<RoleList>(
          decoration: inputDecoration(context, hint: "Visit By"),
          isExpanded: true,
          value: selectvisitorby,
          dropdownColor: context.cardColor,
          items: visiteByList.map((RoleList e) {
            return DropdownMenuItem<RoleList>(
              value: e,
              child: Text(
                e.name,
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (RoleList? value) async {
            hideKeyboard(context);
            selectvisitorby = value;

            if (value!.id == 3) {
              getParkingutility();
            }
          },
        ),
        16.height,
        selectvisitorby != null
            ? selectvisitorby!.id == 2 || selectvisitorby!.id == 3
                ? AppTextField(
                    textFieldType: TextFieldType.NAME,
                    controller: VehicleNo,
                    focus: vehicleNo,
                    nextFocus: visitFor,
                    errorThisFieldRequired: language!.requiredText,
                    decoration: inputDecoration(context, hint: 'Vehicle No'),
                    onChanged: (p0) => VehicleNos = p0,
                  )
                : SizedBox()
            : SizedBox(),
        16.height,
        AppButton(
            text: 'Book Visit',
            color: primaryColor,
            textStyle: boldTextStyle(color: white),
            width: context.width() - context.navigationBarHeight,
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();

              if (fullnames != null) {
                if (icNumbers != null) {
                  if (selectvisitefor != null) {
                    if (selectvisitorby != null) {
                      if (selectvisitorby!.id != 1 && VehicleNos == "") {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: const Text('Check IN'),
                            content: Text('Please Enter Vehicle No'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: Text('Ok'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        //Function Call start

                        RpcVisitorClient client = RpcVisitorClient(
                            ClientChannel(Url,
                                port: Port,
                                options: const ChannelOptions(
                                    credentials:
                                        ChannelCredentials.insecure())));
                        VisitorRequest unitRequest = new VisitorRequest();
                        unitRequest.residenceId = prefs.getString("rid") ?? "";
                        unitRequest.userId = prefs.getString("uid") ?? "";

                        unitRequest.name = fullnames!;
                        unitRequest.iCNumber = icNumbers!;
                        if (selectvisitefor!.id == 1) {
                          unitRequest.perpouseOfVisit =
                              PerpouseOfVisitModel.Delivery;
                        }
                        if (selectvisitefor!.id == 2) {
                          unitRequest.perpouseOfVisit =
                              PerpouseOfVisitModel.Service;
                        }

                        if (selectvisitefor!.id == 3) {
                          unitRequest.perpouseOfVisit =
                              PerpouseOfVisitModel.FamilyAndFriends;
                        }

                        if (selectvisitorby!.id == 1) {
                          unitRequest.visitBy = VisitByModel.WalkIn;
                        }
                        if (selectvisitorby!.id == 2) {
                          unitRequest.visitBy = VisitByModel.Bike;
                        }
                        if (selectvisitorby!.id == 3) {
                          unitRequest.visitBy = VisitByModel.Car;
                        }
                        unitRequest.vehicleNumber = VehicleNos;

                        VisitorResponse response =
                            await client.userInsertVisitor(unitRequest,
                                options: (CallOptions(providers: [_provider])));
                        log("Response $response");
                        if (response.isOk) {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Booking'),
                              content: Text(response.response.toString()),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => PreVisitorsScreen().launch(
                                      context,
                                      isNewTask: true,
                                      pageRouteAnimation:
                                          PageRouteAnimation.Slide),
                                  child: Text('Ok'),
                                ),
                              ],
                            ),
                          );
                        } else {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('Booking'),
                              content: Text(response.error.message.toString()),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: Text('Ok'),
                                ),
                              ],
                            ),
                          );
                        }

//Function Call closed

                      }
                    } else {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Check IN'),
                          content: Text('Please Select Visit By'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: Text('Ok'),
                            ),
                          ],
                        ),
                      );
                    }
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Check IN'),
                        content: Text('Please Select Visit Perpouse'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: Text('Ok'),
                          ),
                        ],
                      ),
                    );
                  }
                } else {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Check IN'),
                      content: Text('Please Enter IC or Passport number'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: Text('Ok'),
                        ),
                      ],
                    ),
                  );
                }
              } else {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Check IN'),
                    content: Text('Please Enter Full name'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: Text('Ok'),
                      ),
                    ],
                  ),
                );
              }
            })
      ],
    );
  }

  // QRcall(String str) {
  //   showDialog<String>(
  //     context: context,
  //     builder: (BuildContext context) => AlertDialog(
  //       scrollable: true,
  //       insetPadding: EdgeInsets.symmetric(vertical: 150),
  //       title: const Text('Pre Visiter QR Code'),
  //       content: Expanded(
  //         child: Text('kk'),
  //       ),
  //       actions: <Widget>[
  //         Center(
  //           child: QrImage(
  //             data: str,
  //             size: 100,
  //             gapless: true,
  //             embeddedImageStyle: QrEmbeddedImageStyle(
  //               size: const Size(
  //                 50,
  //                 20,
  //               ),
  //             ),
  //           ),
  //         ),
  //         TextButton(
  //           onPressed: () => Navigator.pop(context, 'OK'),
  //           child: Text('Ok'),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: appBarWidget(
          "Pre Visitors",
          elevation: 0,
          color: primaryColor,
          showBack: true,
          backWidget: BackWidget(
            onPressed: () => HomeScreen().launch(context,
                isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
          ),
          systemUiOverlayStyle: SystemUiOverlayStyle(
              statusBarIconBrightness:
                  appStore.isDarkMode ? Brightness.light : Brightness.dark,
              statusBarColor: context.scaffoldBackgroundColor),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Pre Visit Form",
              ),
              Tab(
                icon: Icon(Icons.account_box_outlined),
                text: "Visit Book",
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
            SizedBox(
              width: context.width(),
              child: Stack(
                children: [
                  Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          _buildFormWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                                  decoration: boxDecorationDefault(
                                      color: context.cardColor),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ListTile(
                                        onTap: () {
                                          showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                              scrollable: true,
                                              //insetPadding: EdgeInsets.symmetric(vertical: 150),
                                              title: Text(
                                                  VisitorRequestListCheckin[
                                                          index]
                                                      .unitId),
                                              content: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: <Widget>[
                                                  VisitorRequestListCheckin[
                                                                      index]
                                                                  .isPreVisit ==
                                                              true &&
                                                          VisitorRequestListCheckin[
                                                                      index]
                                                                  .isPreVisit ==
                                                              true
                                                      ? Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            // Container(
                                                            //   width: 200.0,
                                                            //   height: 200.0,
                                                            //   child: QrImage(
                                                            //     errorStateBuilder: (context,
                                                            //             error) =>
                                                            //         Text(error
                                                            //             .toString()),
                                                            //     data: VisitorRequestListCheckin[
                                                            //             index]
                                                            //         .visitorId,
                                                            //   ),
                                                            // ),
                                                          ],
                                                        )
                                                      : SizedBox(),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                            Icons
                                                                .account_circle,
                                                            color: primaryColor,
                                                            size: 25.0),
                                                        onPressed: () {},
                                                      ),
                                                      10.width,
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Text(
                                                                'Visitor : ' +
                                                                    VisitorRequestListCheckin[
                                                                            index]
                                                                        .name,
                                                                style:
                                                                    primaryTextStyle()),
                                                          ),
                                                        ],
                                                      ).expand(),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                            Icons.toll_outlined,
                                                            color: primaryColor,
                                                            size: 25.0),
                                                        onPressed: () {},
                                                      ),
                                                      10.width,
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              // _call(datalist.items[index].mobileNumber);
                                                            },
                                                            child: Text(
                                                                'Purpose : ' +
                                                                    VisitorRequestListCheckin[
                                                                            index]
                                                                        .perpouseOfVisit
                                                                        .toString(),
                                                                style:
                                                                    primaryTextStyle()),
                                                          ),
                                                        ],
                                                      ).expand(),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(Icons.home,
                                                            color: primaryColor,
                                                            size: 25.0),
                                                        onPressed: () {},
                                                      ),
                                                      10.width,
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Text(
                                                                'Visit By : ' +
                                                                    VisitorRequestListCheckin[
                                                                            index]
                                                                        .visitBy
                                                                        .toString(),
                                                                style:
                                                                    primaryTextStyle()),
                                                          ),
                                                        ],
                                                      ).expand(),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                            Icons
                                                                .numbers_outlined,
                                                            color: primaryColor,
                                                            size: 25.0),
                                                        onPressed: () {},
                                                      ),
                                                      10.width,
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {},
                                                            child: Text(
                                                                'Vehicle No : ' +
                                                                    VisitorRequestListCheckin[
                                                                            index]
                                                                        .vehicleNumber
                                                                        .toString(),
                                                                style:
                                                                    primaryTextStyle()),
                                                          ),
                                                        ],
                                                      ).expand(),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              actions: <Widget>[
                                                Divider(
                                                  color: Colors.black,
                                                ),
                                                Center(
                                                  child: Text('Hello ' +
                                                      VisitorRequestListCheckin[
                                                              index]
                                                          .name +
                                                      ' of the visitor you have been invited to RMS.'),
                                                ),
                                                Divider(
                                                  color: Colors.black,
                                                ),
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          context, 'OK'),
                                                  child: Text('Close'),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        leading: IconButton(
                                          icon: Icon(Icons.account_box_outlined,
                                              color: VisitorRequestListCheckin[
                                                              index]
                                                          .isPreVisit !=
                                                      true
                                                  ? primaryColor
                                                  : pendingColor,
                                              size: 50.0),
                                          onPressed: () {},
                                        ),
                                        title: Text(
                                            'Visitor : ' +
                                                VisitorRequestListCheckin[index]
                                                    .name,
                                            style: boldTextStyle()),
                                        subtitle: Text(
                                            'At : ' +
                                                VisitorRequestListCheckin[index]
                                                    .checkIn,
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
          ],
        ),
      ),
    );
  }
}
