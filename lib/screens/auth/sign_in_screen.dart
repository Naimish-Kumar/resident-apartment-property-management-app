//import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:grpc/grpc.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/Api/session.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/component/selected_item_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/auth/sign_up_screen.dart';
import 'package:user_app/src/generated/authentication.pbgrpc.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';
import 'package:user_app/utils/constant.dart';
import 'package:user_app/utils/extensions/string_extensions.dart';
import 'package:user_app/utils/images.dart';
import 'package:user_app/utils/model_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../component/loader_widget.dart';
import '../dashboard/home_screen.dart';

class SignInScreen extends StatefulWidget {
  final bool? isFromDashboard;
  final bool? isFromServiceBooking;

  SignInScreen({this.isFromDashboard, this.isFromServiceBooking});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode emailFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  bool isRemember = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  //region Widgets
  Widget _buildTopWidget() {
    return Container(
      child: Column(
        children: [
          Text("${language!.lblLoginTitle}!", style: boldTextStyle(size: 24))
              .center(),
          16.height,
          Text(language!.lblLoginSubTitle,
                  style: primaryTextStyle(size: 16),
                  textAlign: TextAlign.center)
              .center()
              .paddingSymmetric(horizontal: 32),
          32.height,
        ],
      ),
    );
  }

  Widget _buildFormWidget() {
    return Column(
      children: [
        AppTextField(
          textFieldType: TextFieldType.EMAIL,
          controller: emailCont,
          focus: emailFocus,
          nextFocus: passwordFocus,
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: language!.hintEmailTxt),
          suffix: ic_message.iconImage(size: 10).paddingAll(14),
          autoFillHints: [AutofillHints.email],
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.PASSWORD,
          controller: passwordCont,
          focus: passwordFocus,
          suffixPasswordVisibleWidget:
              ic_show.iconImage(size: 10).paddingAll(14),
          suffixPasswordInvisibleWidget:
              ic_hide.iconImage(size: 10).paddingAll(14),
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: language!.hintPasswordTxt),
          onFieldSubmitted: (s) {
            loginUsers();
          },
        ),
      ],
    );
  }

  Widget _buildRememberWidget() {
    return Column(
      children: [
        8.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                2.width,
                SelectedItemWidget(isSelected: isRemember).onTap(() async {
                  await setValue(IS_REMEMBERED, isRemember);
                  isRemember = !isRemember;
                  setState(() {});
                }),
                TextButton(
                  onPressed: () async {
                    await setValue(IS_REMEMBERED, isRemember);
                    isRemember = !isRemember;
                    setState(() {});
                  },
                  child:
                      Text(language!.rememberMe, style: secondaryTextStyle()),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                calllaunchUrl(
                    'http://3.1.4.146:7127/Authentication/ForgotPassword');
              },
              child: Text(
                language!.forgotPassword,
                style: boldTextStyle(
                    color: primaryColor, fontStyle: FontStyle.italic, size: 12),
              ),
            ),
          ],
        ),
        24.height,
        AppButton(
          text: language!.btnTextLogin,
          color: primaryColor,
          textStyle: boldTextStyle(color: white),
          width: context.width() - context.navigationBarHeight,
          onTap: () {
            loginUsers();
          },
        ),
        16.height,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(language!.doNotHaveAccount, style: secondaryTextStyle()),
            TextButton(
              onPressed: () {
                SignUpScreen().launch(context,
                    pageRouteAnimation: PageRouteAnimation.Slide);
              },
              child: Text(
                language!.txtCreateAccount,
                style: boldTextStyle(
                  color: primaryColor,
                  decoration: TextDecoration.underline,
                  fontStyle: FontStyle.italic,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }

  //region Methods
  void loginUsers() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      hideKeyboard(context);

      var request = {
        UserKeys.email: emailCont.text.trim(),
        UserKeys.password: passwordCont.text.trim(),
      };

      log("Login Request $request");
      appStore.setLoading(true);

      RpcAuthenticationClient client = RpcAuthenticationClient(ClientChannel(
          Url,
          port: Port,
          options: const ChannelOptions(
              credentials: ChannelCredentials.insecure())));

      final AuthenticationRequest data = new AuthenticationRequest();
      data.email = emailCont.text.trim();
      data.password = passwordCont.text.trim();
      AppAuthenticationResponse response =
          await client.appUserAuthenticate(data);
      log("Login Response $response");
      // ignore: unnecessary_null_comparison
      if (response.accessToken != "") {
        //Store Token
        String yourToken = response.accessToken;
        Map<String, dynamic>? decodedToken = JwtDecoder.decode(yourToken);
        var uid = decodedToken!['id'];
        var rid = decodedToken['residenceId'];
        var uname = decodedToken['username'];
        var role = decodedToken[
            'http://schemas.microsoft.com/ws/2008/06/identity/claims/role'];
        Session.settoken(response.accessToken);
        Session.setrole(uid, rid, uname, role, data.email,data.password);

        //Update DeviceToken 
       
    //      FirebaseMessaging.instance.getToken().then((token) async {
    //       DeviceTokenRequest tokendata  = new DeviceTokenRequest();
    //       tokendata.userId =uid;
    //       tokendata.deviceToken =token!;         
    //       await client.appDeviceTokenUpdate(tokendata);
    //   print("Token = " + token);
      
    // });
        appStore.setLoading(false);
        HomeScreen().launch(context,
            isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide);
      } else {
        appStore.setLoading(false);
        toast(response.error.message);
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
        "",
        elevation: 0,
        showBack: false,
        color: context.scaffoldBackgroundColor,
        backWidget: BackWidget(),
        systemUiOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness:
                appStore.isDarkMode ? Brightness.light : Brightness.dark,
            statusBarColor: context.scaffoldBackgroundColor),
      ),
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
                    Container(
          height: 150,
          width: 120,
          padding: EdgeInsets.all(0),
          child:  Column(
              children: [
               
                Image.asset(appLogo,
                  width: 250,),
                
                
              ],
            ),
          decoration:
              boxDecorationDefault(shape: BoxShape.circle, color: white),
        ),
                    _buildTopWidget(),
                    _buildFormWidget(),
                    _buildRememberWidget(),
                    //_buildSocialWidget(),
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
