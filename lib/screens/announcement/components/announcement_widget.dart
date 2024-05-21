import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/src/generated/announcement.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';

class AnnouncementWidget extends StatelessWidget {
  final AnnouncementRequest data;

  AnnouncementWidget({required this.data});

  static String getTime(String inputString, String time) {
    List<String> wordList = inputString.split(" ");
    if (wordList.isNotEmpty) {
      return wordList[0] + ' ' + time;
    } else {
      return ' ';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(),
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      decoration: boxDecorationDefault(
          color:
              // ignore: unnecessary_null_comparison
              data.title != null ? context.cardColor : gray.withOpacity(0.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

 
                                
                               
                                   ListTile(
                                      onTap: () {
                                         showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Announcement'),
                        content: Text('Please Enter IC or Passport number'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
                                   },

                          leading:   IconButton(
                                      icon: Icon(Icons.campaign_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {

                                      },
                                    ),
                                     trailing:   IconButton(
                                      icon: Icon(Icons.call,
                                          color: primaryColor, size: 40.0),
                                      onPressed: () {

                                      
                                      },
                                    ),
                          
                          title: Text(data.title,
                                            style: boldTextStyle()),
                                             subtitle: Text(data.dateCreated,
                                            style: primaryTextStyle()),
                        ) ,
                                   
                               
                                   
                               
                                
                                
                                
                           



          // IconButton(
          //   icon:
          //       Icon(Icons.campaign_outlined, color: primaryColor, size: 50.0),
          //   onPressed: () {
              
          //   },
          // ),
          // // data.profileImage.validate().isNotEmpty ? circleImage(image: data.profileImage.validate(), size: 60) : circleImage(image: ic_notification_user, size: 60),
          // 16.width,
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Row(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         Text(
          //             '${data.title.validate().split('_').join(' ').capitalizeFirstLetter()}',
          //             style: boldTextStyle()),
          //       ],
          //     ),
          //     Text(data.description,
          //         style: secondaryTextStyle(),
          //         maxLines: 3,
          //         overflow: TextOverflow.ellipsis),
          //   ],
          // ).expand(),
        ],
      ),
    );
  }
}
