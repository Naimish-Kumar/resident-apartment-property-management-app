 import 'dart:async';
import 'dart:convert'; 
import 'dart:io';
import 'dart:typed_data';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/account/maintenance%20.dart'; 
import 'package:user_app/src/generated/accounts.pbgrpc.dart';
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

 

class ViewAccountScreen extends StatefulWidget {
  const ViewAccountScreen({Key? key, required this.todo}) : super(key: key);
  final AccountsRequest todo;
  @override
  _ViewworkScreen createState() => _ViewworkScreen();
}

class _ViewworkScreen extends State<ViewAccountScreen> {
  TechnicianRequest datalist = new TechnicianRequest();
  final picker = ImagePicker();
  TextEditingController remarkCont = TextEditingController();
   FocusNode remarkFocus = FocusNode();
      PickedFile? _image;
      String  remark ="";
  @override
  void initState() {
    super.initState();
     
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
     
    setState(() {
      if(PickedFiles!=null)
      {
       _image = PickedFiles; 
       }
       
    });
    }
  } 

  Future getImagefromGallery() async {
     Permission _permission = Permission.storage;
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
                  openAppSettings();
                
                }   
                       // function used to perform after pressing the button
                ),
                
              ],
            ),);
            });
       //Navigator.pop(context);
      print('denied');
      //await openAppSettings();
    }else{
    // ignore: non_constant_identifier_names, deprecated_member_use
    final PickedFilega = await picker.getImage(source: ImageSource.gallery);
     setState(() {
     if(PickedFilega!=null){
       _image =PickedFilega;
       
      }else{//print('no image selected');
      }
    });
    }
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
        "View Account",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => MaintenanceScreen().launch(context,
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
                                 Text( widget.todo.feeTitle,
                                     style: boldTextStyle(size: 20)),
                               ],
                             ),
                             8.height,
                              Text('payment For  : ' + widget.todo.paymentFor.toString(),
                                 style: primaryTextStyle()),
                                 8.height,
                              Text('payment        : RM ' + widget.todo.fees.toString(),
                                 style: primaryTextStyle()),
                                  8.height,
                              Text('Post Date      : ' + widget.todo.dateCreated,
                                 style: primaryTextStyle()),
                                 Text('Status           : ' + widget.todo.paymentStatus.toString(),
                                 style: primaryTextStyle()),
                             Text(widget.todo.description,
                                 style: primaryTextStyle()),
                                 Text('Document  ',
                                 style: primaryTextStyle()),
                                 
                        widget.todo.paymentProof.length != 0 ?          
            Center( 
              child:Container( 
                  width:200, 
                  height:150, 
                  child:Image.memory(
            Uint8List.fromList(widget.todo.paymentProof),
            width: 300,
            height: 250,
            fit: BoxFit.contain,
          ) 
              ), 
            ) :SizedBox(),
                                   _image!=null?  Padding(
                padding: const EdgeInsets.all(2.0),
                child: SizedBox(
                  width: 350,
               
      height: 300,
                  child: Center(
                    // ignore: unnecessary_null_comparison
                    child: _image == null
                        ?  Text ('No Image is picked' +"",style: TextStyle(color: primaryColor),)
                        : Image.file(File(_image!.path)),
                  ),
                ),
                
              ):Container(
              alignment: Alignment.centerLeft,
              child:Padding(padding: EdgeInsets.only(left:60.0),
                child: Text( "" ,textAlign: TextAlign.left,style: TextStyle(color: primaryColor),),
                 ),
                ),

              widget.todo.paymentStatus== PaymentStatusModel.NotPaid ?     Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding:const EdgeInsets.only(top: 30,bottom: 30),
                        child: SizedBox(
                          width: double.infinity,
                            height: 50,
                          child: ElevatedButton(
                            child: Text('Add Proof',style:  TextStyle(color: primaryColor),),
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
                               // return 
                                showDialog(
                     context: context,
                    builder: (ctx) => AlertDialog(
                    title:Text('Select Option'
                    ),
                    
                   content: Row(
                    mainAxisSize: MainAxisSize.min,
                     //mainAxisAlignment: MainAxisAlignment.center,
                     
                      children: <Widget>[
                           TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                           getImagefromGallery();
                      },
                      icon: Icon( // <-- Icon
                       Icons.photo,
                          size: 40.0,
                      ),
                     label: Text('Photo',style: TextStyle(color: primaryColor),textAlign:TextAlign.left,), // <-- Text
                    ),
                     TextButton.icon(
                      onPressed: () {
                        Navigator.pop(context);
                           getImagefromcamera();
                      },
                      icon: Icon( // <-- Icon
                       Icons.camera_alt_rounded,
                          size: 40.0,
                      ),
                     label: Text('Camera',style: TextStyle(color: primaryColor),textAlign:TextAlign.left,), // <-- Text
                    ),
                     
                    ],
                  ), 
                    
                ),
              );
              },
            ),
                        )) : SizedBox(),
                                       
                            
                             10.height,
                             widget.todo.paymentStatus == PaymentStatusModel.NotPaid
                                       ?  AppButton(
                               child: Row(
                                 mainAxisSize: MainAxisSize.min,
                                 children: [
                                   ic_shield_done.iconImage(
                                       size: 18, color: Colors.white),
                                   8.width,
                                    Text('Pay',
                                           style: boldTextStyle(color: white))
                                       
                                 ],
                               ),
                               width: context.width(),
                               color: primaryColor,
                               elevation: 0,
                               onTap: () async {

                                if (_image == null) {
                                   toast('Please Upload proof');
                                } else {
                                    
                                 RpcAccountsClient client =
                                     RpcAccountsClient(ClientChannel(Url,
                                         port: Port,
                                         options: const ChannelOptions(
                                             credentials: ChannelCredentials
                                                 .insecure())));
                                final AccountsRequest data =
                                     new AccountsRequest();
                                 data.accountsId = widget.todo.accountsId;
                                 
                                
                            File imagefile = File(_image!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                                //  data.proof =  base64string;
                                  data.paymentProof =  base64.decode(base64string);
                               
                           
                            
 AccountsResponse response = await client.userStatusUpdateAccounts(data,options: (CallOptions(
                                             providers: [_provider])));
                                 log("Login Response $response");
                                 // ignore: unnecessary_null_comparison
                                 if (response.isOk) {
                                   appStore.setLoading(false);
                                 showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Account'),
                        content: Text(response.response.toString()),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => MaintenanceScreen().launch(context,
                                isNewTask: true,
                                pageRouteAnimation: PageRouteAnimation.Slide),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
                                     
                                  
                                   
                                 } else {
                                   appStore.setLoading(false);
                                   toast(response.error.message);
                                 }
                           
                                  
                                }
                        
                               
                               },
                             ) : SizedBox(),
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
