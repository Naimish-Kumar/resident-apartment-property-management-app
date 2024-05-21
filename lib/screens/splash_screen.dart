
import 'package:user_app/main.dart';
import 'package:user_app/screens/dashboard/home_screen.dart';
import 'package:user_app/utils/constant.dart';
import 'package:user_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'auth/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    String accessToken = "";
    afterBuildCreated(() async {
      setStatusBarColor(Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness:
              appStore.isDarkMode ? Brightness.light : Brightness.dark);

      await appStore.setLanguage(getStringAsync(SELECTED_LANGUAGE_CODE,
          defaultValue: defaultLanguage));

      int themeModeIndex = getIntAsync(THEME_MODE_INDEX);
      if (themeModeIndex == ThemeModeSystem) {
        appStore.setDarkMode(
            MediaQuery.of(context).platformBrightness == Brightness.dark);
      }
      SharedPreferences prefs = await SharedPreferences.getInstance();
      accessToken = (prefs.getString("AccessToken") ?? "");

      if (accessToken != "") {
       
        HomeScreen().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide);
      } else {
        SignInScreen().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Fade);
      }

      await 2.seconds.delay;
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            appStore.isDarkMode ? splash_background : splash_light_background,
            height: context.height(),
            width: context.width(),
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/app_images/ic_app_logo.png", height: 120, width: 120),
              32.height,
              Text('RMS', style: boldTextStyle(size: 26)),
            ],
          ),
        ],
      ),
    );
  }
}
