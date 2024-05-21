//import 'package:firebase_core/firebase_core.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:user_app/app_theme.dart';
import 'package:user_app/locale/app_localizations.dart';
import 'package:user_app/locale/languages.dart';
import 'package:user_app/model/material_you_model.dart'; 
import 'package:user_app/screens/splash_screen.dart';
import 'package:user_app/store/app_store.dart';
import 'package:user_app/store/filter_store.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';
import 'package:user_app/utils/constant.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart'; 
import 'model/file_model.dart';
 
 
 
AppStore appStore = AppStore();
FilterStore filterStore = FilterStore();
BaseLanguage? language;

late List<FileModel> fileList = [];

bool mIsEnterKey = false;
 
void main() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Permission.notification.isDenied.then((value) {
        if (value) {
          Permission.notification.request();
        }
      });
      await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
       
  // await Firebase.initializeApp();
  // var _messaging = FirebaseMessaging.instance;

  // await _messaging.requestPermission(
  //   alert: true,
  //   badge: true,
  //   provisional: false,
  //   sound: true,
  // );
  // await FirebaseMessaging.instance.setAutoInitEnabled(true);
  await initialize(aLocaleLanguageList: languageList());
  forceEnableDebug = true;

  passwordLengthGlobal = 8;
  appButtonBackgroundColorGlobal = primaryColor;
  defaultAppButtonTextColorGlobal = Colors.white;
  defaultBlurRadius = 0;
  defaultSpreadRadius = 0;
  textSecondaryColorGlobal = appTextPrimaryColor;
  textPrimaryColorGlobal = appTextSecondaryColor;
  defaultAppButtonElevation = 0;
  pageRouteTransitionDurationGlobal = 400.milliseconds;

  await appStore.setLanguage(
      getStringAsync(SELECTED_LANGUAGE_CODE, defaultValue: defaultLanguage));
  await appStore.setLoggedIn(getBoolAsync(IS_LOGGED_IN));

  int themeModeIndex = getIntAsync(THEME_MODE_INDEX);
  if (themeModeIndex == ThemeModeLight) {
    appStore.setDarkMode(false);
  } else if (themeModeIndex == ThemeModeDark) {
    appStore.setDarkMode(true);
  }
  
 
 

  runApp(MyApp());


 
 
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RestartWidget(
      child: Observer(
        builder: (_) => FutureBuilder<Color>(
          future: getMaterialYouData(),
          builder: (_, snap) {
            return Observer(
              builder: (_) => MaterialApp(
                
                debugShowCheckedModeBanner: false,
                navigatorKey: navigatorKey,
                home: SplashScreen(),
                theme: AppTheme.lightTheme(color: primaryColor),
                darkTheme: AppTheme.darkTheme(color: secondaryPrimaryColor),
                themeMode:
                    appStore.isDarkMode ? ThemeMode.dark : ThemeMode.light,
                scrollBehavior: SBehavior(),
                supportedLocales: LanguageDataModel.languageLocales(),
                localizationsDelegates: [
                  AppLocalizations(),
                  //GlobalMaterialLocalizations.delegate,
                  //GlobalWidgetsLocalizations.delegate,
                ],
                 
              ),

            );
          },
        ),
      ),
    );
  }
}

class RestartWidget extends StatefulWidget {
  final Widget child;

  RestartWidget({required this.child});

   

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

   

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
