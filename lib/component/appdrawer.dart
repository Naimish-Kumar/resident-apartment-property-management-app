import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:user_app/Api/session.dart'; 
import 'package:user_app/screens/dashboard/home_screen.dart';
import '../screens/auth/sign_in_screen.dart';
import '../utils/colors.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  var username = "Loading..";
  var email = "Loading..";
  @override
  void initState() {
    super.initState();
    calldata();
  }

  void calldata() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      username = prefs.getString("uname") ?? "";
      email = prefs.getString("email") ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child:
                  Icon(Icons.account_circle, color: primaryColor, size: 70.0),
            ),
            accountEmail: Text(email),
            accountName: Text(
              'Welcome ' + username,
              style: TextStyle(fontSize: 22.0),
            ),
            decoration: BoxDecoration(
              color: primaryColor,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.house),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              HomeScreen().launch(context,
                  isNewTask: true,
                  pageRouteAnimation: PageRouteAnimation.Slide);
            },
          ),
         
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text(
              'About Us',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              // Navigator.pushNamed(context, Aboutus.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text(
              'Sign Out',
              style: TextStyle(fontSize: 18.0),
            ),
            onTap: () {
              Session.allclear();             
              SignInScreen().launch(context,
                  isNewTask: true,
                  pageRouteAnimation: PageRouteAnimation.Slide);
            },
          ),
          ListTile(
            title: Text('Version : 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
