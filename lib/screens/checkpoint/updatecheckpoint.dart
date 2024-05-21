import 'dart:async';
import 'dart:convert'; 
import 'dart:io';
import 'dart:typed_data'; 
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart'; 
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/checkpoint/scancheckpoint.dart';
import 'package:user_app/screens/dashboard/home_screen.dart'; 
import 'package:user_app/src/generated/checkpoint.pbgrpc.dart'; 
import 'package:user_app/src/generated/technician.pbgrpc.dart';
import 'package:user_app/src/generated/utility.pb.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/utils/extensions/string_extensions.dart';
import 'package:user_app/utils/images.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class UpdateCheckpointScreen extends StatefulWidget {
  const UpdateCheckpointScreen({Key? key, required this.todo}) : super(key: key);
  final TechnicianRequest todo;
  @override
  _UpdateCheckpointScreen createState() => _UpdateCheckpointScreen();
}

class _UpdateCheckpointScreen extends State<UpdateCheckpointScreen> {
  TechnicianRequest datalist = new TechnicianRequest();
  final picker = ImagePicker();
   final picker2 = ImagePicker();
    final picker3 = ImagePicker();
     final picker4 = ImagePicker();
  File? _image;  
  File? _image2;
  File? _image3;
  File? _image4;    
  String formattedDate = DateFormat('dd/MM/yyyy hh:mm a').format(DateTime.now());
  String _currentAddress ="No Location";
  Position? _currentPosition;

   
  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    final hasPermission = await _handleLocationPermission();

    if (!hasPermission) return;
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) {
      setState(() => _currentPosition = position);
      _getAddressFromLatLng(_currentPosition!);
    }).catchError((e) {
      debugPrint(e);
    });
  }

  Future<void> _getAddressFromLatLng(Position position) async {
    await placemarkFromCoordinates(
            _currentPosition!.latitude, _currentPosition!.longitude)
        .then((List<Placemark> placemarks) {
      Placemark place = placemarks[0];
      setState(() {
        _currentAddress =
            '${place.street}, ${place.subLocality}, ${place.subAdministrativeArea}, ${place.postalCode}';
      });
    }).catchError((e) {
      debugPrint(e);
    });
  }


  @override
  void initState() {
    super.initState();
    _getCurrentPosition();
     
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
   Future getImagefromcameraTwo() async {
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
      final   PickedFiles = await picker2.getImage(source: ImageSource.camera );
    //await resetImage();

      setState(() {
       if(PickedFiles!=null)
       {
        _image2 = File(PickedFiles.path); 
       }
     
     });
 
    
    }
  } 
   Future getImagefromcameraThree() async {
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
      final   PickedFiles = await picker3.getImage(source: ImageSource.camera );
    //await resetImage();

      setState(() {
       if(PickedFiles!=null)
       {
        _image3 = File(PickedFiles.path); 
       }
     
     });
 
    
    }
  } 

   Future getImagefromcameraFour() async {
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
      final   PickedFiles = await picker4.getImage(source: ImageSource.camera );
    //await resetImage();

      setState(() {
       if(PickedFiles!=null)
       {
        _image4 = File(PickedFiles.path); 
       }
     
     });
 
    
    }
  } 

    ///Resetting an image file
  Future resetImage() async {
    setState(() {
      _image = null;
    });
  }

  ///Handler when stamp image complete
  void resultStamp(File? file) {
    print(file?.path);
    setState(() {
      _image = file;
    });
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

  @override
  void dispose() {
    setStatusBarColor(primaryColor, statusBarIconBrightness: Brightness.light);

    super.dispose();
  }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        "View Check Point",
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
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        itemCount: 1,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: GestureDetector(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: boxDecorationDefault(
                        color: context.cardColor,
                        border:
                            Border.all(color: context.dividerColor, width: 1)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          16.width,
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('CheckPoint : ' + widget.todo.jobTitle,
                                     style: boldTextStyle(size: 18)),
                               ],
                             ),
                             8.height,
                              Text('Description : ' + widget.todo.description.toString(),
                                 style: primaryTextStyle()),
                                  8.height,
                              
                                   _image!=null?  Padding(
                padding: const EdgeInsets.all(0),
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
             Container(
                alignment: Alignment.topCenter,
                child: Text(
                 formattedDate,
                  style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                   _currentAddress,
                    style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                  )),
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
 widget.todo.status == StatusModel.Pending ? SizedBox():   Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding:const EdgeInsets.only(top: 30,bottom: 30),
                        child: SizedBox(
                          width: double.infinity,
                            height: 50,
                          child: ElevatedButton(
                            child: Text('Add Proof One',style:  TextStyle(color: primaryColor),),
                           style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, //background color of button
                    side:  BorderSide(width:1, color:primaryColor), //border width and color
                    //elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    
                  ),
                            //text:getTranslated(context, "Topup Proof"),
                            onPressed: () {
                          //  _getCurrentPosition();
                          //     _getAddressFromLatLng(_currentPosition!);
           getImagefromcamera();
              },
            ),
                        )),
                8.height,
                              
                                   _image2!=null?  Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: 800,
               
      height: 400,
                  child: Center(
                    // ignore: unnecessary_null_comparison
                    child: _image2 == null
                        ?  Text ('No Image is picked' +"",style: TextStyle(color: primaryColor),)
                        :   Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child:Image.file(File(_image2!.path))
            ),
             Container(
                alignment: Alignment.topCenter,
                child: Text(
                 formattedDate,
                  style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                   _currentAddress,
                    style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                  )),
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
                 widget.todo.status == StatusModel.Pending ? SizedBox():   Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding:const EdgeInsets.only(top: 30,bottom: 30),
                        child: SizedBox(
                          width: double.infinity,
                            height: 50,
                          child: ElevatedButton(
                            child: Text('Add Proof Two',style:  TextStyle(color: primaryColor),),
                           style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, //background color of button
                    side:  BorderSide(width:1, color:primaryColor), //border width and color
                    //elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    
                  ),
                            //text:getTranslated(context, "Topup Proof"),
                            onPressed: () {
                          //  _getCurrentPosition();
                          //     _getAddressFromLatLng(_currentPosition!);
           getImagefromcameraTwo();
              },
            ),
                        )),

 8.height,
                              
                                   _image3!=null?  Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: 800,
               
      height: 400,
                  child: Center(
                    // ignore: unnecessary_null_comparison
                    child: _image3 == null
                        ?  Text ('No Image is picked' +"",style: TextStyle(color: primaryColor),)
                        :   Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child:Image.file(File(_image3!.path))
            ),
             Container(
                alignment: Alignment.topCenter,
                child: Text(
                 formattedDate,
                  style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                   _currentAddress,
                    style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                  )),
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
              widget.todo.status == StatusModel.Pending ? SizedBox():   Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding:const EdgeInsets.only(top: 30,bottom: 30),
                        child: SizedBox(
                          width: double.infinity,
                            height: 50,
                          child: ElevatedButton(
                            child: Text('Add Proof Three',style:  TextStyle(color: primaryColor),),
                           style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, //background color of button
                    side:  BorderSide(width:1, color:primaryColor), //border width and color
                    //elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    
                  ),
                            //text:getTranslated(context, "Topup Proof"),
                            onPressed: () {
                          //  _getCurrentPosition();
                          //     _getAddressFromLatLng(_currentPosition!);
           getImagefromcameraThree();
              },
            ),
                        )),
                              8.height,
                              
                                   _image4!=null?  Padding(
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  width: 800,
               
      height: 400,
                  child: Center(
                    // ignore: unnecessary_null_comparison
                    child: _image4 == null
                        ?  Text ('No Image is picked' +"",style: TextStyle(color: primaryColor),)
                        :   Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child:Image.file(File(_image4!.path))
            ),
             Container(
                alignment: Alignment.topCenter,
                child: Text(
                 formattedDate,
                  style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                )),
                Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                   _currentAddress,
                    style: TextStyle(color: Color.fromARGB(255, 255, 18, 1), fontWeight: FontWeight.bold, fontSize: 20.0),
                  )),
                  
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
                ),   widget.todo.status == StatusModel.Pending ? SizedBox():   Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding:const EdgeInsets.only(top: 30,bottom: 30),
                        child: SizedBox(
                          width: double.infinity,
                            height: 50,
                          child: ElevatedButton(
                            child: Text('Add Proof Four',style:  TextStyle(color: primaryColor),),
                           style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, //background color of button
                    side:  BorderSide(width:1, color:primaryColor), //border width and color
                    //elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(30)
                    ),
                    
                  ),
                            //text:getTranslated(context, "Topup Proof"),
                            onPressed: () {
                          //  _getCurrentPosition();
                          //     _getAddressFromLatLng(_currentPosition!);
           getImagefromcameraFour();
              },
            ),
                        )),           
                            
                             10.height,
                             AppButton(
                               child: Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   ic_shield_done.iconImage(
                                       size: 18, color: Colors.white),
                                   8.width,
                                    Text('Checked',
                                           style: boldTextStyle(color: white)),
                                 ],
                               ),
                               width: context.width(),
                               color: primaryColor,
                               elevation: 0,
                               onTap: () async {

                                 if(_image!=null || _image2!=null || _image3!=null || _image4!=null){
                                  SharedPreferences prefs =
                                      await SharedPreferences.getInstance();
                                  RpcCheckpointClient client =
                                      RpcCheckpointClient(ClientChannel(Url,
                                          port: Port,
                                          options: const ChannelOptions(
                                              credentials: ChannelCredentials
                                                  .insecure())));
                                 final CheckpointVisitRequest data =
                                      new CheckpointVisitRequest();
                                  data.checkpointId = widget.todo.technicianId;
                                  
                                  data.userId =prefs.getString("uid") ?? "";
                                  data.residenceId =prefs.getString("rid") ?? "";
                                if(_image!=null){
                            File imagefile = File(_image!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                             data.proof =  base64.decode(base64string);
                             data.location = _currentAddress; 
                                }
                                if(_image2!=null){
                            File imagefile = File(_image2!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                             data.proof2 =  base64.decode(base64string);
                            
                                }
                                 if(_image3!=null){
                            File imagefile = File(_image3!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                             data.proof3 =  base64.decode(base64string);
                            
                                }
                                if(_image4!=null){
                            File imagefile = File(_image4!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                             data.proof4 =  base64.decode(base64string);
                            
                                }

                              CheckpointResponse response =
                                   await client.checkpointVisit(data,
                                       options: (CallOptions(
                                           providers: [_provider])));
                                                          // ignore: unnecessary_null_comparison
                               if (response.isOk) {
                                 appStore.setLoading(false);
                                showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: Text('CheckPoint'),
            content:  Text(response.response),
            actions: <Widget>[
              TextButton(
                onPressed: () =>  ScanCheckpoint().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide),
                child: const Text('OK'),
              ),
            ],
          ),
        );
                               } else {
                                 appStore.setLoading(false);
                                 toast(response.error.message);
                               }

                                 }
                                 else{
                                  showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Checkpoint'),
            content: const Text('A minimum of one proof required'),
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
                         ).expand(),
                  
 
                      
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },

        
      ),
    );
  }
}
