import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';
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
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/common.dart';
import 'package:user_app/utils/extensions/string_extensions.dart';
import 'package:user_app/utils/images.dart';
 
 

class VisitorsScreen extends StatefulWidget {

  @override
  _VisitorsScreenScreenState createState() =>    _VisitorsScreenScreenState();
}

class _VisitorsScreenScreenState extends State<VisitorsScreen> {


  Future<void> _call(String mob) async {
   

    final Uri dial = Uri.parse("tel://" + mob);
    if (!await launchUrl(dial)) {
      throw 'could not launch url';
    }
  }
   
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
   String VehicleNos ="";

List<VisitorRequest> VisitorRequestListCheckin = [];
List<VisitorRequest> VisitorRequestListCheckout = [];
 
  List<ResBuilding> UnitsLists = [];
  List<ResidenceParkingResponse> ResidenceParkingResponseList =[];
  List<UnitRequest> roomList = [];
  ResidencesParkingList residenceParkingResponse = new ResidencesParkingList();
 final picker = ImagePicker();
       File? _image;
  
  List<RList> VisitForList = [];
  List<RoleList> visiteByList = [];
  RList?  selectvisitefor;
RoleList? selectvisitorby;
ResidenceParkingResponse? parking;
OwnerTenantIfo ownerTenantIfo = new OwnerTenantIfo();
bool isownerTenant =false;

  bool isAcceptedTc = false;
  ResBuilding? selectbuilding;
  UnitRequest? selectrace;
  UnitsList subresdata = new UnitsList();

   

  getCheckInunitList() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
    ResidenceVisitorLookupModel subcatdata = new ResidenceVisitorLookupModel();
    subcatdata.residenceId = prefs.getString("rid") ?? "";
     

    RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    VisitorsList responsedata = await client.getAllCheckInVisitors(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      VisitorRequestListCheckin.clear();
      VisitorRequestListCheckin = responsedata.items;
    });
  }
  getCheckOutunitList() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
    ResidenceVisitorLookupModel subcatdata = new ResidenceVisitorLookupModel();
    subcatdata.residenceId = prefs.getString("rid") ?? "";
     

    RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    VisitorsList responsedata = await client.getAllCheckOutVisitors(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      VisitorRequestListCheckout.clear();
      VisitorRequestListCheckout = responsedata.items;
    });
  }
  getunitList(String cat) async {
    UnitListLookupModel subcatdata = new UnitListLookupModel();
    subcatdata.buildingId = cat;
    RpcUnitClient client = RpcUnitClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    UnitsList responsedata = await client.getSoldUnitListById(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      roomList.clear();
      roomList = responsedata.items;
    });
  }
    getOwnerInfounitList(String cat) async {
    UnitLookupModel subcatdata = new UnitLookupModel();
    subcatdata.unitId = cat;
    RpcUnitClient client = RpcUnitClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));
    OwnerTenantIfo responsedata = await client.getOwnerAndTententUnitById(subcatdata,
        options: (CallOptions(providers: [_provider])));
    setState(() {
      print("object" + responsedata.toString());

       
      
      ownerTenantIfo = responsedata;
        isownerTenant = true;
      
    });
  }
   


  @override
  void initState() {
    super.initState();
    init();
     getCheckInunitList();
      getCheckOutunitList();
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
    
    ResidencesParkingList parkingresponse = await client.getResidenceAvailableParkingListById(data,
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
      RList r3 = new RList(id: 3, name: "Pick Up");
      VisitForList.add(r3);
      RList r4 = new RList(id: 4, name: "Drop Off");
      VisitForList.add(r4);
      RList r5 = new RList(id: 5, name: "Family And Friends");
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

  
    Future getImagefromcamera() async {
     Permission _permission = Permission.camera;
    PermissionStatus _status = await _permission.request();
    print(_status);
    if (_status.isDenied||_status.isPermanentlyDenied) {
      setState(() {
       showDialog(
                     context: context,
                    builder: (ctx) =>
      AlertDialog(
              title: Text("Permission Required"),  // To display the title it is optional
              content: Text("Cannot proceed without permission"),   // Message which will be pop up on the screen
              // Action widget which will provide the user to acknowledge the choice
                actions: [
                TextButton(           // FlatButton widget is used to make a text to work like a button
                  child: Text("Open App Settings"),
                  onPressed: () {
                    Navigator.pop(context);
                     openAppSettings();}
                       // function used to perform after pressing the button
                ),
                
              ],
            ),);
            });
       //Navigator.pop(context);
      print('denied');
      //await openAppSettings();
    }
    else{
      // ignore: non_constant_identifier_names, deprecated_member_use
      final   PickedFiles = await picker.getImage(source: ImageSource.camera );
    //await resetImage();

      setState(() {
       if(PickedFiles!=null)
       {
        _image = File(PickedFiles.path); 
       }
     
     });
    
    
    }
  } 



  Widget _buildFormWidget() {
    return Column(
      children: [
        10.height,
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
              child:   Text(
                e.unitPrefix +
                    '-' +
                    e.unitFloorNumber.toString() +
                    '-' +
                    e.unitNumber.toString(),
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ) ,
            );
          }).toList(),
          onChanged: (UnitRequest? value) async {
            hideKeyboard(context);
             selectrace = value;
getOwnerInfounitList(value!.unitId);
  setState(() {
      
      
      ownerTenantIfo = new OwnerTenantIfo();
        isownerTenant = false;
      
    });
           
          },
        ),
         
         isownerTenant == true ?  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                               
                               ownerTenantIfo.owner.firstName != "" ?      ListTile(
                                      onTap: () {
                                   },

                          leading:   IconButton(
                                      icon: Icon(Icons.account_circle,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {

                                      },
                                    ),
                                     trailing:   IconButton(
                                      icon: Icon(Icons.call,
                                          color: primaryColor, size: 40.0),
                                      onPressed: () {

                                       _call(ownerTenantIfo.owner.phoneNumber);
                                      },
                                    ),
                          
                          title: Text('Owner : '+ownerTenantIfo.owner.firstName+''+ownerTenantIfo.owner.lastName,
                                            style: boldTextStyle()),
                                             subtitle: Text(ownerTenantIfo.owner.phoneNumber,
                                            style: primaryTextStyle()),
                        ):SizedBox(),
                                   
                               
                               ownerTenantIfo.tenant.firstName != "" ?      ListTile(
                                      onTap: () {
                                   },
                                    trailing:   IconButton(
                                      icon: Icon(Icons.call,
                                          color: primaryColor, size: 40.0),
                                      onPressed: () {},
                                    ),
                          leading:   IconButton(
                                      icon: Icon(Icons.account_circle,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {
                                           _call(ownerTenantIfo.tenant.phoneNumber);
                                      },
                                    ),
                          
                          title: Text('Tenant : '+ownerTenantIfo.tenant.firstName +''+ownerTenantIfo.tenant.lastName,
                                            style: boldTextStyle()),
                                             subtitle: Text(ownerTenantIfo.tenant.phoneNumber,
                                            style: primaryTextStyle()),
                        ):SizedBox(),
                                            
                               
                                
                                
                                
                              ],
                            ):SizedBox(),
          16.height,
        AppTextField(
          textFieldType: TextFieldType.NAME,
          controller: Fullname,
          focus: fullname,
          nextFocus: icNumber,
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: 'Visitor Full Name'),
          suffix: ic_profile2.iconImage(size: 10).paddingAll(14),
          onChanged: (p0) => fullnames = p0,
        ),
 16.height,
  AppTextField(
          textFieldType: TextFieldType.PHONE,
          controller: IcNumber,
          focus: icNumber,
          nextFocus: visitFor,
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: 'IC Number'),
         
          onChanged: (p0) => icNumbers = p0,
        ),
         //16.height,

        
                            _image!=null?  Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: 800,
               
      height: 400,
                  child: Center(
                    // ignore: unnecessary_null_comparison
                    child: _image == null
                        ?  Text ('No Image is picked' +"",style: TextStyle(color: primaryColor),)
                        :   Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child:Image.file(File(_image!.path))
            ),
             
            SizedBox(height: 30),
                
          ],
        ),
                      
                  ),
                ),
              ):Container(
              alignment: Alignment.centerLeft,
              child:Padding(padding: EdgeInsets.only(left:60.0),
                child: Text( "" ,textAlign: TextAlign.left,style: TextStyle(color: primaryColor),),
                 ),
                ),

              Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding:const EdgeInsets.only(top: 5,bottom: 20),
                        child: SizedBox(
                          width: double.infinity,
                            height: 50,
                          child: ElevatedButton(
                            child: Text('Add IC or Licence Proof',style:  TextStyle(color: primaryColor),),
                           style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, //background color of button
                    side:  BorderSide(width:1, color:primaryColor), //border width and color
                    //elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    
                  ),
                            
                            onPressed: () {
                          
           getImagefromcamera();
              },
            ),
                        )),
        DropdownButtonFormField<RList>(
          decoration: inputDecoration(context, hint: "Purpose Of Visit"),
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
              ResidenceParkingResponseList.clear();
              selectvisitorby =null;
 if (value!.id ==3 && selectvisitefor!.id !=3 && selectvisitefor!.id !=4)  {
            setState(() {
              
            getParkingutility();
            });
             
           }
             
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

            ResidenceParkingResponseList.clear();
            selectvisitorby = value;
           if (value!.id ==3 && selectvisitefor!.id !=3 && selectvisitefor!.id !=4)  {
            setState(() {
              
            getParkingutility();
            });
             
           }
          },
        ),
         16.height,
 selectvisitorby != null ? selectvisitorby!.id ==2 || selectvisitorby!.id ==3 ? AppTextField(
          textFieldType: TextFieldType.NAME,
          controller: VehicleNo,
          focus: vehicleNo,
          nextFocus: visitFor,
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: 'Vehicle No'),        
          onChanged: (p0) => VehicleNos = p0,
        ):SizedBox():SizedBox(),
 16.height,
       // ignore: unnecessary_null_comparison
       ResidenceParkingResponseList != null ?  DropdownButtonFormField<ResidenceParkingResponse>(
          decoration: inputDecoration(context, hint: "Select Parking"),
          isExpanded: true,
          value: parking,
          dropdownColor: context.cardColor,
          items: ResidenceParkingResponseList.map((ResidenceParkingResponse? e) {
            return DropdownMenuItem<ResidenceParkingResponse>(
              value: e,
              child: Text(
                e!.parkingName.toString(),
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (ResidenceParkingResponse? value) async {
            hideKeyboard(context);
            parking = value;
            
            
            
          },
        ):SizedBox(),
        16.height,
        
        AppButton(
          text: 'Check In',
          color: primaryColor,
          textStyle: boldTextStyle(color: white),
          width: context.width() - context.navigationBarHeight,
          onTap: () async {
            SharedPreferences prefs = await SharedPreferences.getInstance();



            if (selectbuilding != null) {
            if (selectrace != null) {
            if (fullnames != null) {
            if (icNumbers != null) {
            if (_image != null) {
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
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
       
            } else {
                   if (selectvisitorby!.id == 3 && parking == null && ( selectvisitefor!.id == 1 || selectvisitefor!.id == 2 || selectvisitefor!.id == 5 )) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Check IN'),
                        content: Text('Please Select Parking'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
                    
                  } else {
                        //Function Call start
                  RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
                      port: Port,
                      options: const ChannelOptions(
                          credentials: ChannelCredentials.insecure())));
                  VisitorRequest unitRequest = new VisitorRequest();
                  unitRequest.residenceId = prefs.getString("rid") ?? "";
                  unitRequest.userId = prefs.getString("uid") ?? "";
                  unitRequest.unitId = selectrace!.unitId.toString();
                  unitRequest.buildingId = selectbuilding!.buildingId.toString();
                  unitRequest.name = fullnames!;
                  unitRequest.iCNumber = icNumbers!;
                     unitRequest.vehicleNumber = VehicleNos;
                     if (selectvisitefor!.id ==1) {
                        unitRequest.perpouseOfVisit = PerpouseOfVisitModel.Delivery;
                     }
                      if (selectvisitefor!.id ==2 ) {
                        unitRequest.perpouseOfVisit = PerpouseOfVisitModel.Service;
                     }
                      if (selectvisitefor!.id ==3 ) {
                        unitRequest.perpouseOfVisit = PerpouseOfVisitModel.PickUp;
                     }
                      if (selectvisitefor!.id ==4 ) {
                        unitRequest.perpouseOfVisit = PerpouseOfVisitModel.DropOff;
                     }
                      if (selectvisitefor!.id ==5 ) {
                        unitRequest.perpouseOfVisit = PerpouseOfVisitModel.FamilyAndFriends;
                     }
                 
                  if (selectvisitorby!.id ==1 ) {
                        unitRequest.visitBy = VisitByModel.WalkIn;
                     }
                      if (selectvisitorby!.id ==2 ) {
                        unitRequest.visitBy = VisitByModel.Bike;
                     }
                      if (selectvisitorby!.id ==3 ) {
                        unitRequest.visitBy = VisitByModel.Car;
                     }
                  
                

                   if (parking != null) {

                     unitRequest.parkingId = parking!.parkingId;
                     
                   }
  File imagefile = File(_image!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                             unitRequest.iCProof =  base64.decode(base64string);
                  
                  VisitorResponse response = await client.insertVisitor(unitRequest,
                      options: (CallOptions(providers: [_provider])));
                  log("Response $response");
                  if (response.isOk) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Check IN'),
                        content: Text(response.response.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => VisitorsScreen().launch(context,
                                isNewTask: true,
                                pageRouteAnimation: PageRouteAnimation.Slide),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Check IN'),
                        content: Text(response.error.message.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
                  }
//Function Call closed
                    
                  }
                  
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
                            child:  Text('Ok'),
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
                            child:  Text('Ok'),
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
                        content: Text('Please Upload IC or Licence Proof'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
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
                            child:  Text('Ok'),
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
                            child:  Text('Ok'),
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
                        content: Text('Please Select Unit'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
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
                        content: Text('Please Select Building'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
              
            }
 
               
                                }   
              )
           
      ],
    );
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
  length: 3,
  child:Scaffold(
      drawer: AppDrawer(),
      appBar: appBarWidget(
        "Visitors",
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
      text: "Visit Form",
    ),
    Tab(
      icon: Icon(Icons.account_box_outlined),
      text: "Check In",
    ),
     Tab(
      icon: Icon(Icons.account_box_outlined),
      text: "Check Out",
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
                 AppButton(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ic_shield_done.iconImage(
                                        size: 18, color: Colors.white),
                                    8.width,
                                     Text('Check Out',
                                            style: boldTextStyle(color: white)),
                                  ],
                                ),
                                width: context.width(),
                                color: primaryColor,
                                elevation: 0,
                                onTap: () async {

     RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
         port: Port,
         options:
             const ChannelOptions(credentials: ChannelCredentials.insecure())));
     final VisitorRequest data = new VisitorRequest();
     data.visitorId =  VisitorRequestListCheckin[index].visitorId;
     appStore.setLoading(true);
  
     VisitorResponse parkingresponse = await client.guardUpdateVisitor(data,
         options: (CallOptions(providers: [_provider])));
          toast(parkingresponse.response);
 appStore.setLoading(false);
 getCheckInunitList();
        getCheckOutunitList();
          Navigator.pop(context, 'OK');
                                }),
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
                                      icon: Icon(Icons.account_box_outlined,
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
          
            VisitorRequestListCheckout.isEmpty
          ? const Center(
              child: Text(
              'No Data',
              style: TextStyle(color: Colors.black),
            ))
          : ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: VisitorRequestListCheckout.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          4.height,
                          Container(
                            padding: EdgeInsets.all(10),
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
                        title:  Text(VisitorRequestListCheckout[index].unitId),
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
                              child:  Text('Visitor : ' + VisitorRequestListCheckout[index].name,
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
                              child:  Text('Purpose : ' + VisitorRequestListCheckout[index].perpouseOfVisit.toString(),
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
                              
                              child:  Text('Visit By : '+ VisitorRequestListCheckout[index].visitBy.toString(),
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
                              
                              child:  Text('Vehicle No : '+ VisitorRequestListCheckout[index].vehicleNumber.toString(),
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
                              
                              child:  Text('Parking No : '+ VisitorRequestListCheckout[index].parkingId.toString(),
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
                              child:  Text( VisitorRequestListCheckout[index].checkOut.toString(),
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
                              child:  Text('Owner : '+ VisitorRequestListCheckout[index].ownerTenantIfo.owner.firstName+' '+VisitorRequestListCheckout[index].ownerTenantIfo.owner.lastName+' (' +VisitorRequestListCheckout[index].ownerTenantIfo.owner.phoneNumber+')',
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                    10.width,
                                     IconButton(
                                      icon: Icon(Icons.call,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                          _call(VisitorRequestListCheckout[index].ownerTenantIfo.owner.phoneNumber);
                                      },
                                    ),
                                    
                                  ],
                                ):SizedBox(),

                                  VisitorRequestListCheckout[index].ownerTenantIfo.tenant.firstName != "" ?  Row(
                                  children: [
                                   
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                              onTap: () {
                                
                              },
                              child:  Text('Tenant : '+ VisitorRequestListCheckout[index].ownerTenantIfo.tenant.firstName+' '+VisitorRequestListCheckout[index].ownerTenantIfo.tenant.lastName+' (' +VisitorRequestListCheckout[index].ownerTenantIfo.tenant.phoneNumber+')',
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                    10.width,
                                     IconButton(
                                      icon: Icon(Icons.call,
                                          color: primaryColor, size: 25.0),
                                      onPressed: () {
                                        _call(VisitorRequestListCheckout[index].ownerTenantIfo.tenant.phoneNumber);
                                      },
                                    ),
                                    
                                  ],
                                ):SizedBox(),
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




                                 trailing: Image.asset(ic_verified,
                                        height: 24,
                                        width: 24,
                                        color: completedColor),     
                          leading:    
                                    IconButton(
                                      icon: Icon(Icons.account_box_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ) ,
                          
                          title: Text('Visitor : '+VisitorRequestListCheckout[index].name,
                                            style: boldTextStyle()),
                                             subtitle: Text('At : '+VisitorRequestListCheckout[index].checkOut,
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
    ),);
  }
}
