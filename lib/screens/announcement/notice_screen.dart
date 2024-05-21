import 'dart:async';
import 'package:flutter/material.dart'; 
import 'package:grpc/grpc.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/back_widget.dart'; 
import 'package:user_app/main.dart';
import 'package:user_app/model/notification_model.dart';
import 'package:user_app/src/generated/announcement.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
 

class NoticeScreen extends StatefulWidget {
  final bool? hideAppBar;

  NoticeScreen({this.hideAppBar});
  @override
  _NoticeScreenState createState() => _NoticeScreenState();
}

class _NoticeScreenState extends State<NoticeScreen> {
  List<NotificationData> readNotificationList = [];
  List<AnnouncementRequest> unReadNotificationList = <AnnouncementRequest>[];

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    getAllNotification();
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

  void getAllNotification() async {
    appStore.setLoading(true);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    RpcAnnouncementClient client = RpcAnnouncementClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final AnnouncementRequest data = new AnnouncementRequest();
    data.users = prefs.getString("uid") ?? "";
    appStore.setLoading(true);
    AnnouncementsList response = await client.getNoticeByUserId(data,
        options: (CallOptions(providers: [_provider])));
    log("Response $response");
    setState(() {
      unReadNotificationList = response.items;
    });

    appStore.setLoading(false);
  }

  Future<void> readNotification({String? id}) async {
    appStore.setLoading(true);

    appStore.setLoading(false);
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        'Notice',
        color: context.primaryColor,
        textColor: Colors.white,
        showBack: true,
        backWidget: BackWidget(),
      ),
     body: RefreshIndicator(
        onRefresh: () async {
          getAllNotification();
          return await 2.seconds.delay;
        },
        child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              itemCount: unReadNotificationList.length,
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
                            padding: EdgeInsets.all(2),
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
                        title:  Text(unReadNotificationList[index].title),
                        content: Text(unReadNotificationList[index].dateCreated),
                        actions: <Widget>[
                           Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.notifications_none_outlined,
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
                              child:  Text(unReadNotificationList[index].description,
                                            style: primaryTextStyle()),), 
                                      ],
                                    ).expand(), 
                                  ],
                                ),
                                    
                                  
                                
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child:  Text('Ok'),
                          ),
                        ],
                      ),
                    );
 
                                         
                                         
                                         },




                                      
                          leading:    
                                    IconButton(
                                      icon: Icon(Icons.notifications_none_outlined,
                                          color: primaryColor, size: 50.0),
                                      onPressed: () {},
                                    ) ,
                          
                          title: Text(unReadNotificationList[index].title,
                                            style: boldTextStyle()),
                                             subtitle: Text( unReadNotificationList[index].dateCreated,
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
      ),
    );
  }
}
