import 'package:flutter/material.dart'; 
import 'package:nb_utils/nb_utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:user_app/component/appdrawer.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/utils/colors.dart';

class EmergencyScreen extends StatefulWidget {
  static String routeName = "/help_center";

  @override
  State<EmergencyScreen> createState() => _EmergencyScreen();
}

class _EmergencyScreen extends State<EmergencyScreen> {

   Future<void> _call(String mob) async {
   

    final Uri dial = Uri.parse("tel://" + mob);
    if (!await launchUrl(dial)) {
      throw 'could not launch url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget(
        "Emergency",
        elevation: 0,
        showBack: true,
        color: primaryColor,
        backWidget: BackWidget(
          onPressed: () => HomeScreen().launch(context,
              isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide),
        ),
         
      ),
      drawer: AppDrawer(),
      body: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            height: 650,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    elevation: 5,
                    color: Colors.white,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          const ListTile(
                            title: Center(
                                child: Text(
                              'EMERGENCY CALL',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                          const SizedBox(height: 7),
                          const Divider(
                            color: Color.fromARGB(255, 255, 255, 255),
                            height: 36,
                          ),
                          const SizedBox(height: 6),
                          ListTile(
                            leading: ConstrainedBox(
                                constraints: const BoxConstraints(
                                    minWidth: 20, minHeight: 20),
                                child: Icon(
                                  Icons.local_police_outlined,
                                  size: 50,
                                  color: primaryColor,
                                )),
                            title: const Text(
                              'Call Police',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {
                                _call('100');
                            },
                          ),
                          const SizedBox(height: 10),
                          ListTile(
                            leading: ConstrainedBox(
                                constraints: const BoxConstraints(
                                    minWidth: 20, minHeight: 20),
                                child: Icon(Icons.fire_truck_outlined,
                                    size: 50, color: primaryColor)),
                            title: const Text(
                              'Call Fire Station',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                             onTap: () {
                                _call('101');
                            },
                          ),
                          const SizedBox(height: 10),
                          ListTile(
                            leading: ConstrainedBox(
                                constraints: const BoxConstraints(
                                    minWidth: 20, minHeight: 20),
                                child: Icon(Icons.medical_services_outlined,
                                    size: 50, color: primaryColor)),
                            title: const Text(
                              'Call Ambulance',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                             onTap: () {
                                _call('103');
                            },
                          ),
                          const SizedBox(height: 3),
                          const Divider(
                            color: Color.fromARGB(255, 255, 255, 255),
                            height: 36,
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
