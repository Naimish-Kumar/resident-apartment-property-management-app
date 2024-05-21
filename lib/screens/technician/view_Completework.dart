 
import 'dart:typed_data';

import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/dashboard/home_screen.dart'; 
import 'package:user_app/src/generated/technician.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nb_utils/nb_utils.dart'; 
import 'package:image_picker/image_picker.dart';
 


class ViewworkCompleteScreen extends StatefulWidget {
  const ViewworkCompleteScreen({Key? key, required this.todo}) : super(key: key);
  final TechnicianRequest todo;
  @override
  _ViewworkScreen createState() => _ViewworkScreen();
}

class _ViewworkScreen extends State<ViewworkCompleteScreen> {
  TechnicianRequest datalist = new TechnicianRequest();
  final picker = ImagePicker();
  TextEditingController remarkCont = TextEditingController();
   FocusNode remarkFocus = FocusNode();
      
      late String  remark;
  @override
  void initState() {
    super.initState();
     
  }
 
    

  
  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
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
        "View Complete Work",
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
                                 Text( widget.todo.jobTitle,
                                     style: boldTextStyle(size: 20)),
                               ],
                             ),
                             8.height,
                              Text('Priorities         : ' + widget.todo.priorities.toString(),
                                 style: primaryTextStyle()),
                                  8.height,
                              Text('Post Date        : ' + widget.todo.dateCreated,
                                 style: primaryTextStyle()),
                            
                                  Text('Complete Date : ' + widget.todo.dateModified,
                                 style: primaryTextStyle()),
                                  Text('Remark            : ' + widget.todo.remark,
                                 style: primaryTextStyle()),
                                  Text(widget.todo.description,
                                 style: primaryTextStyle()),
                                  8.height,
                                   Text('Document : ',
                                 style: primaryTextStyle()),
                                 
                                 for(var item in widget.todo.technicianDocs) 
            Center( 
              child:Container( 
                  width:200, 
                  height:150, 
                  child:Image.memory(
            Uint8List.fromList(item.file),
            width: 300,
            height: 250,
            fit: BoxFit.contain,
          ) 
              ), 
            ) ,
              8.height,
                                  Text('Proof            ',
                                 style: primaryTextStyle()),
                                  
Center(
    child:Image.memory(
            Uint8List.fromList(widget.todo.proof),
            width: 300,
            height: 250,
            fit: BoxFit.contain,
          )),
            
                            
                            
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
