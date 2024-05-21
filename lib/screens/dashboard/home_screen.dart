import 'package:user_app/main.dart'; 
import 'package:user_app/screens/dashboard/fragment/dash_fragment.dart';
import 'package:flutter/material.dart'; 
import 'package:nb_utils/nb_utils.dart';

class HomeScreen extends StatefulWidget {
  final bool? redirectToBooking;

  HomeScreen({this.redirectToBooking});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  DateTime? currentBackPressTime;

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    if (widget.redirectToBooking.validate(value: false)) {
      currentIndex = 1;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        DateTime now = DateTime.now();
        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
          currentBackPressTime = now;
          toast(language!.lblBackPressMsg);
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Scaffold(body: DashboardFragment()),
    );
  }
}
