import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart';
 
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:user_app/Api/callurl.dart'; 
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/component/loader_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/dashboard/home_screen.dart'; 
import 'package:user_app/screens/property/components/qrscan.dart'; 
import 'package:user_app/src/generated/residence.pbgrpc.dart';  
import 'package:user_app/src/generated/visitor.pbgrpc.dart';
import 'package:user_app/utils/colors.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/common.dart';
import 'package:user_app/utils/extensions/string_extensions.dart';
import 'package:user_app/utils/images.dart';

class PrevisitstatusScreen extends StatefulWidget {
  const PrevisitstatusScreen({Key? key, this.vdata}) : super(key: key);
  final VisitorRequest? vdata;
 

  @override
  _PrevisitstatusScreenScreenState createState() =>
      _PrevisitstatusScreenScreenState();
}

class _PrevisitstatusScreenScreenState extends State<PrevisitstatusScreen> {

   List<ResidenceParkingResponse> ResidenceParkingResponseList =[];
   ResidenceParkingResponse? parking;
  
    bool isparking = false;
 final picker = ImagePicker();
       File? _image;
      
  @override
  void initState() {
    getParkingutility();
    if (widget.vdata!.visitBy ==3 && widget.vdata!.perpouseOfVisit !=3 && widget.vdata!.perpouseOfVisit !=4)  {
      isparking= true;
    }
     
    super.initState();
    
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

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
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


  //region Widget
  Widget _buildTopWidget() {
    return Column(
      children: [
        20.height,
        Text('Pre Visitor Details ' , style: boldTextStyle(size: 24))
            .center(),
        // 16.height,
        // Text('This request made by recidence people',
        //         style: primaryTextStyle(size: 18), textAlign: TextAlign.center)
        //     .center()
        //     .paddingSymmetric(horizontal: 32),
      ],
    );
  }

  Widget _buildFormWidget() {
    return Column(
      children: [
        10.height,
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
                                      icon: Icon(Icons.qr_code,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ),
                                    16.width,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Visitor : '+widget.vdata!.name,
                                            style: boldTextStyle()),
                                             12.height,
                                        Text('IC : '+widget.vdata!.iCNumber,
                                            style: primaryTextStyle()),
                                        12.height,
                                        Text('Visit By : '+widget.vdata!.visitBy.toString(),
                                            style: primaryTextStyle()),
                                             12.height,
                                        Text('Visit For : '+widget.vdata!.perpouseOfVisit.toString(),
                                            style: primaryTextStyle()),
                                             12.height,
                                        Text('Vehicle No : '+widget.vdata!.vehicleNumber.toString(),
                                            style: primaryTextStyle()),
                                            
                                      ],
                                    ).expand(),
                                     
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
                                      text: widget.vdata!.unitId
                                    ),
                                  ],
                                ),
                                
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
                                 15.height,
            // ignore: unnecessary_null_comparison
            isparking != true ?  DropdownButtonFormField<ResidenceParkingResponse>(
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
                               child: Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   ic_shield_done.iconImage(
                                       size: 18, color: Colors.white),
                                   8.width,
                                    Text('Check IN',
                                           style: boldTextStyle(color: white)),
                                 ],
                               ),
                               width: context.width(),
                               color: primaryColor,
                               elevation: 0,
                               onTap: () async {
                                if(isparking)
                                {
                                   if (_image != null) {

                                     RpcVisitorClient client = RpcVisitorClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final VisitorRequest data = new VisitorRequest();
    data.visitorId =  widget.vdata!.visitorId;
    data.isCheckIn = true;
     File imagefile = File(_image!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                             data.iCProof =  base64.decode(base64string);
                             if (parking != null) {

                     data.parkingId = parking!.parkingId;
                      
                   }
    appStore.setLoading(true);
    
    VisitorResponse parkingresponse = await client.guardUpdateVisitor(data,
        options: (CallOptions(providers: [_provider])));
       
appStore.setLoading(false);
        if (parkingresponse.isOk) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Check IN'),
                        content: Text(parkingresponse.response.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => HomeScreen().launch(context,
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
                        content: Text(parkingresponse.error.message.toString()),
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
                                 else{
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

                                }
                                 else{
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
                                 }

                                
  
 
 
                               })
                              ],
                            ),
                          ),
                        ],
                      ),
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
        "Pre Visitor Status",
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
