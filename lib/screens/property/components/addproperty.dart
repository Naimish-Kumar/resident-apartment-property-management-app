import 'dart:async';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/component/loader_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/model/utility_list.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/screens/property/components/qrscan.dart';
import 'package:user_app/src/generated/residence.pbgrpc.dart';
import 'package:user_app/src/generated/unit.pbgrpc.dart';
import 'package:user_app/src/generated/utility.pb.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';

class AddPropertyScreen extends StatefulWidget {
  const AddPropertyScreen({Key? key, this.rid, this.rname}) : super(key: key);
  final String? rid;
  final String? rname;

  @override
  _AddPropertyScreenScreenState createState() =>
      _AddPropertyScreenScreenState();
}

class _AddPropertyScreenScreenState extends State<AddPropertyScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  List<ResBuilding> UnitsLists = [];
  List<UnitRequest> roomList = [];
  List<RoleList> nationalityList = [];
  List<RList> raceList = [];
  List<RoleList> roleList = [];

  bool isAcceptedTc = false;
  ResBuilding? selectbuilding;
  RoleList? selectnationality;
  UnitRequest? selectrace;
  UnitsList subresdata = new UnitsList();
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

  Future<void> getutility() async {
    appStore.setLoading(true);
    RpcResidenceClient client = RpcResidenceClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final ResidenceLookupModel data = new ResidenceLookupModel();
    data.residenceId = widget.rid!;
    appStore.setLoading(true);
    ResidenceRequest response = await client.getResidenceById(data,
        options: (CallOptions(providers: [_provider])));
    log("Response $response");
    setState(() {
      UnitsLists = response.resBuilding;
    });
    setState(() {
      //Role
      RoleList role1 = new RoleList(id: 1, name: "Owner");
      roleList.add(role1);
      RoleList role2 = new RoleList(id: 3, name: "Tenant");
      roleList.add(role2);
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

  //region Widget
  Widget _buildTopWidget() {
    return Column(
      children: [
        62.height,
        Text('Welcome to ' + widget.rname!, style: boldTextStyle(size: 24))
            .center(),
        16.height,
        Text('Select Building and Unit then submit request',
                style: primaryTextStyle(size: 18), textAlign: TextAlign.center)
            .center()
            .paddingSymmetric(horizontal: 32),
      ],
    );
  }

  Widget _buildFormWidget() {
    return Column(
      children: [
        62.height,
        DropdownButtonFormField<ResBuilding>(
          decoration: inputDecoration(context, hint: "Select Building"),
          isExpanded: true,
          value: selectbuilding,
          dropdownColor: context.cardColor,
          items: UnitsLists.map((ResBuilding? e) {
            return DropdownMenuItem<ResBuilding>(
              value: e,
              child: Text(
                e!.buildingPrefix.toString(),
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (ResBuilding? value) async {
            hideKeyboard(context);
            selectbuilding = value;
            selectrace = null;
            getunitList(value!.buildingId.toString());
            setState(() {
              roomList.clear();
            });
          },
        ),
        16.height,
        DropdownButtonFormField<UnitRequest>(
          decoration: inputDecoration(context, hint: "Select Unit"),
          isExpanded: true,
          value: selectrace,
          dropdownColor: context.cardColor,
          items: roomList.map((UnitRequest e) {
            return DropdownMenuItem<UnitRequest>(
              value: e,
              child: Text(
                
                    e.unitFloorNumber.toString() +
                    '-' +
                    e.unitNumber.toString() + '-' +e.unitPrefix 
                    ,
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (UnitRequest? value) async {
            hideKeyboard(context);

            selectrace = value;
          },
        ),
        16.height,
        DropdownButtonFormField<RoleList>(
          decoration: inputDecoration(context, hint: "Are you?"),
          isExpanded: true,
          value: selectnationality,
          dropdownColor: context.cardColor,
          items: roleList.map((RoleList e) {
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
            selectnationality = value;

            setState(() {});
          },
        ),
        16.height,
        AppButton(
          text: 'Request',
          color: primaryColor,
          textStyle: boldTextStyle(color: white),
          width: context.width() - context.navigationBarHeight,
          onTap: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();
            if (selectbuilding != null) {
              if (selectrace != null) {
                if (selectnationality != null) {
                  //Function Call
                  RpcUnitClient client = RpcUnitClient(ClientChannel(Url,
                      port: Port,
                      options: const ChannelOptions(
                          credentials: ChannelCredentials.insecure())));
                  UnitRequest unitRequest = new UnitRequest();

                  unitRequest.userId = prefs.getString("uid") ?? "";
                  unitRequest.unitId = selectrace!.unitId.toString();
                  unitRequest.buildingId =
                      selectbuilding!.buildingId.toString();
                  unitRequest.unitNumber = selectrace!.unitNumber;
                  unitRequest.unitFloorNumber = selectrace!.unitFloorNumber;
                  unitRequest.isPrimary = true;
                  unitRequest.unitFurnishType = UnitFurnishTypeModel.Furnished;
                  unitRequest.unitType = UnitTypeModel.LeaseHold;
                  unitRequest.unitStatus = UnitStatusModel.Requested;
                  //unitRequest.leaseFrom = DateTime.now().toUtc().toString();
                  // unitRequest.leaseTo = DateTime.now().toUtc().toString();
                  unitRequest.unitPrice = 100.00;
                  unitRequest.numberOfBathroom = 1;
                  unitRequest.numberOfBedRoom = 1;
                  //unitRequest.description = 'This Request from Mobile App';
                  //unitRequest.unitSoldDate = DateTime.now().toUtc().toString();
                  if (selectnationality!.name == "Owner") {
                    unitRequest.unitRole = UnitRoleModel.Owner;
                  }
                  if (selectnationality!.name == "Tenant") {
                    unitRequest.unitRole = UnitRoleModel.Tenant;
                  }
                  log("Request $unitRequest");
                  UnitResponse response = await client.updateUnit(unitRequest,
                      options: (CallOptions(providers: [_provider])));
                  log("Response $response");
                  if (response.isOk) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Add Property'),
                        content: Text(response.response.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => HomeScreen().launch(context,
                                isNewTask: true,
                                pageRouteAnimation: PageRouteAnimation.Slide),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Add Property'),
                        content: Text(response.error.message.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                } else {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Add Property'),
                      content: const Text('Please Select Are you?'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              } else {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Add Property'),
                    content: const Text('Please Select Unit'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              }
            } else {
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Add Property'),
                  content: const Text('Please Select Building'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: appBarWidget(
        "Add Property",
        elevation: 0,
        color: primaryColor,
        showBack: true,
        backWidget: BackWidget(
          onPressed: () => Qrscan().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
        systemUiOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness:
                appStore.isDarkMode ? Brightness.light : Brightness.dark,
            statusBarColor: context.scaffoldBackgroundColor),
      ),
      backgroundColor: Colors.white,
      body: SizedBox(
        width: context.width(),
        child: Stack(
          children: [
            Form(
              key: formKey,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    _buildTopWidget(),
                    _buildFormWidget(),
                    8.height,
                    //_buildFooterWidget(),
                  ],
                ),
              ),
            ),
            Observer(
                builder: (_) =>
                    LoaderWidget().center().visible(appStore.isLoading)),
          ],
        ),
      ),
    );
  }
}
