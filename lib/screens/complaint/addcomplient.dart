 import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:grpc/grpc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:user_app/Api/callurl.dart'; 
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart'; 
import 'package:user_app/main.dart'; 
import 'package:user_app/screens/complaint/complaintlist_screen.dart'; 
import 'package:user_app/src/generated/complaint.pbgrpc.dart';
import 'package:user_app/src/generated/utility.pb.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';  
import 'package:flutter/material.dart'; 
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../component/loader_widget.dart';
 

class AddComplientScreen extends StatefulWidget {
  final bool? isFromDashboard;
  final bool? isFromServiceBooking;

  AddComplientScreen({this.isFromDashboard, this.isFromServiceBooking});

  @override
  _AddComplientScreenState createState() => _AddComplientScreenState();
}

class _AddComplientScreenState extends State<AddComplientScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();
late String  sub,des;
  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isRemember = true;
  final picker = ImagePicker();
       File? _image;

  @override
  void initState() {
    super.initState();
  }
    Future<FutureOr<void>> _provider(
      Map<String, String> metadata, String uri) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString("AccessToken") ?? "";
    metadata['Authorization'] = "Bearer $token";
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

  Widget _buildFormWidget() {
    return Column(
      children: [
        AppTextField(
          textFieldType: TextFieldType.NAME,
          controller: emailCont,
          focus: emailFocus,
          nextFocus: passwordFocus,  
            onChanged: (p0) => sub= p0,        
          decoration: inputDecoration(context, hint: 'Complain'),
          
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.MULTILINE,
          controller: passwordCont,
          focus: passwordFocus,    
            onChanged: (p0) => des = p0,      
          decoration: inputDecoration(context, hint: language!.lblDescription),
           
        ),
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
                             
                            onPressed: () {
                          
           getImagefromcamera();
              },
            ),
                        )),
                                           
                            
             
      ],
    );
  }

  Widget _buildRememberWidget() {
    return Column(
      children: [
        
       
        24.height,
        AppButton(
          text: 'Add Complain',
          color: primaryColor,
          textStyle: boldTextStyle(color: white),
          width: context.width() - context.navigationBarHeight,
          onTap: () {
            Addcomplient();
          },
        ),
        16.height,
        
      ],
    );
  }

  //region Methods
  void Addcomplient() async {
    
     

     if (emailCont.text == "") {
       toast('Please Enter Complain');
     }
     else{

 if (passwordCont.text == "") {
        toast('Please Enter Complain Description');
     }
     else{

      if(_image!=null){
          File imagefile = File(_image!.path); //convert Path to File
                            Uint8List imagebytes = await imagefile.readAsBytes(); //convert to bytes
                            String base64string = base64.encode(imagebytes); //convert bytes to base64 string
                          
      RpcComplaintClient client = RpcComplaintClient(ClientChannel(
          Url,
          port: Port,
          options: const ChannelOptions(
              credentials: ChannelCredentials.insecure()))); 

      final ComplaintRequest data = new ComplaintRequest();
    
      ComplaintDocsModel com = new ComplaintDocsModel();
SharedPreferences prefs2 = await SharedPreferences.getInstance();
      data.subject = sub;
      data.message = des;
      data.residenceId = prefs2.getString("rid") ?? "";
      data.userId = prefs2.getString("uid") ?? "";
      data.status = StatusModel.Pending;
      com.file =base64.decode(base64string);
      com.fileName ="Proof";
      com.fileType = "image/png";      
     
         data.complaintDocs.add(com);
      ComplaintResponse response = await client.insertComplaint(data, 
      options: (CallOptions(providers: [_provider])));
     
      // ignore: unnecessary_null_comparison
      if (response.isOk) {
         appStore.setLoading(false);
        ComplientListScreen().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide);
      } else {
        appStore.setLoading(false);
        toast(response.error.message);
      }
        
      }
      else{
         toast('Please Upload Proof');
      }
      

     }
     }
   
    
  }

//endregion

  @override
  void dispose() {
    if (widget.isFromServiceBooking.validate()) {
      setStatusBarColor(Colors.transparent,
          statusBarIconBrightness: Brightness.dark);
    }
    if (widget.isFromDashboard.validate()) {
      setStatusBarColor(Colors.transparent,
          statusBarIconBrightness: Brightness.dark);
    }
    setStatusBarColor(primaryColor, statusBarIconBrightness: Brightness.light);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        "Add Complain",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => ComplientListScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
       
      ),
      drawer: AppDrawer(),
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
                   
                    _buildFormWidget(),
                    _buildRememberWidget(),
                  
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
