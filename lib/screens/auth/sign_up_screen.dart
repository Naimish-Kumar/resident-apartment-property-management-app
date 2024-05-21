import 'dart:async';
import 'package:grpc/grpc.dart';
import 'package:intl/intl.dart';
import 'package:user_app/Api/callurl.dart';
import 'package:user_app/component/back_widget.dart';
import 'package:user_app/component/loader_widget.dart';
import 'package:user_app/component/selected_item_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/screens/auth/sign_in_screen.dart';
import 'package:user_app/src/generated/residence.pbgrpc.dart';
import 'package:user_app/src/generated/utility.pb.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';
import 'package:user_app/utils/constant.dart';
import 'package:user_app/utils/extensions/string_extensions.dart';
import 'package:user_app/utils/images.dart';
import 'package:user_app/utils/model_keys.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../model/country_list_model.dart';
import '../../model/utility_list.dart';
import '../../src/generated/user.pbgrpc.dart';

class SignUpScreen extends StatefulWidget {
  final String? phoneNumber;
  final bool? isOTPLogin;
  final String? verificationId;
  final String? otpCode;

  SignUpScreen(
      {this.phoneNumber,
      this.isOTPLogin = false,
      this.otpCode,
      this.verificationId});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController fNameCont = TextEditingController();
  TextEditingController lNameCont = TextEditingController();
  TextEditingController emailCont = TextEditingController();
  TextEditingController mobileCont = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  TextEditingController userNameCont = TextEditingController();
  TextEditingController passwordCont = TextEditingController();

  FocusNode fNameFocus = FocusNode();
  FocusNode lNameFocus = FocusNode();
  FocusNode emailFocus = FocusNode();
  FocusNode mobileFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  FocusNode dOBFocus = FocusNode();
  FocusNode userNameFocus = FocusNode();
  String? fName, lName, email, mobile;
  CountryListResponse? selectedCountry;
  List<GList> genderList = [];
  List<NList> nationalityList = []; 
  List<RoleList> roleList = [];
  DateTime selectedDate = DateTime.now();
  bool isAcceptedTc = false;
  GList? selectgender;
  NList? selectnationality;
 
  List<ResidenceRequest> reslist = [];
  ResidenceRequest? res;
  String dates = "00-00-0001";
  late DateTime dateOfBirth;
  void _acxtiveUrl() async {
    //if (!await launchUrl(_activeurl)) throw 'Could not launch $_activeurl';
    SignInScreen().launch(context,
        isNewTask: true, pageRouteAnimation: PageRouteAnimation.Slide);
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    mobileCont.text =
        widget.phoneNumber != null ? widget.phoneNumber.toString() : "";
    passwordCont.text =
        widget.phoneNumber != null ? widget.phoneNumber.toString() : "";
    userNameCont.text =
        widget.phoneNumber != null ? widget.phoneNumber.toString() : "";
    await getutility();
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<void> getutility() async {
    RpcResidenceClient client2 = RpcResidenceClient(ClientChannel(Url,
        port: Port,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure())));

    final Empty data2 = new Empty();

    ResidencesList response = await client2.getAllResidences(data2);
    setState(() {
      reslist = response.items;
    });

    //Gender
    GList g1 = new GList(id: 1, name: "Male");
    genderList.add(g1);
    GList g2 = new GList(id: 2, name: "Female");
    genderList.add(g2);
    GList g3 = new GList(id: 3, name: "Others");
    genderList.add(g3);
    //Nationality
    NList n1 = new NList(id: 1, name: "Malaysian");
    nationalityList.add(n1);
    NList n2 = new NList(id: 2, name: "Non Malaysian");
    nationalityList.add(n2);
    
   
    //Role
    RoleList role1 = new RoleList(id: 1, name: "Resident");
    roleList.add(role1);
    RoleList role2 = new RoleList(id: 2, name: "Guard");
    roleList.add(role2);
    RoleList role3 = new RoleList(id: 3, name: "Technician");
    roleList.add(role3);
  }

  void registerUser() async {
    hideKeyboard(context);

    //Validation

    if (fName == null) {
      toast("Please Enter Your First Name ");
    } else {
      if (lName == null) {
        toast("Please Enter Your Last Name ");
      } else {
        if (mobile == null) {
          toast("Please Enter Your Mobile Number");
        } else {
          if (dates == "00-00-0001") {
            toast("Please Enter Your Date of birth");
          } else {
            if (selectgender == null) {
              toast("Please Select Gender");
            } else {
              
                if (selectnationality == null) {
                  toast("Please Select Nationality");
                } else {
                  if (isAcceptedTc) {
                    if (res == null) {
                      toast("Please Select Residence");
                    } else {
                      Map<String, dynamic> request = {
                        UserKeys.firstName: fNameCont.text.trim(),
                        UserKeys.lastName: lNameCont.text.trim(),
                        UserKeys.userName:
                            widget.phoneNumber ?? userNameCont.text.trim(),
                        UserKeys.userType: LoginTypeUser,
                        UserKeys.contactNumber:
                            widget.phoneNumber ?? mobileCont.text.trim(),
                        UserKeys.email: emailCont.text.trim(),
                        UserKeys.password:
                            widget.phoneNumber ?? passwordCont.text.trim(),
                        UserKeys.loginType: LoginTypeUser
                      };

                      //ApiCall
                      RpcUserClient client = RpcUserClient(ClientChannel(Url,
                          port: Port,
                          options: const ChannelOptions(
                              credentials: ChannelCredentials.insecure())));

                      final UserRequest data = new UserRequest();
                      data.firstName = fNameCont.text.trim();
                      data.lastName = lNameCont.text.trim();
                      data.email = emailCont.text.trim();
                      data.phoneNumber = mobileCont.text.trim();
                      data.residenceId = res!.residenceId.toString();
                      data.residenceName = res!.residenceName;
                      data.dOB = dateinput.text;
                      if (selectgender!.id == 1) {
                        data.gender = GenderModel.Male;
                      }
                      if (selectgender!.id == 2) {
                        data.gender = GenderModel.Female;
                      }
                      if (selectgender!.id == 3) {
                        data.gender = GenderModel.NotMentioned;
                      }

                     

                      if (selectnationality!.id == 1) {
                        data.nationality = NationalityModel.Malaysian;
                      }
                      if (selectnationality!.id == 2) {
                        data.nationality = NationalityModel.NonMalaysian;
                      }
                      

                      AccountRoleModel userrole;
                      userrole = AccountRoleModel.User;
                      data.role.add(userrole);

                      log("Login Request $data");
                      UserResponse response = await client.insertUser(data);
                      log("Login Response $response");
                      // ignore: unnecessary_null_comparison
                      if (response.isOk) {
                        //Store Token

                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            title: Text("Sign Up"),
                            content: Text(response.response.toString()),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => _acxtiveUrl(),
                                child: Text("OK"),
                              ),
                            ],
                          ),
                        );
                      } else {
                        toast(response.error.message);
                      }
                      log("1st Request:- $request");
                    }
                  } else {
                    toast('Please accept terms and condition');
                  }
                }
              
            }
          }
        }
      }
    }

    if (1 == 100) {
      //if (formKey.currentState!.validate()) {
      //formKey.currentState!.save();

    }
  }

  Future<void> registerWithOTP() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      hideKeyboard(context);
      //appStore.setLoading(true);

      return;
    }
  }

  //region Widget
  Widget _buildTopWidget() {
    return Column(
      children: [
        Container(
          height: 150,
          width: 120,
          padding: EdgeInsets.all(0),
          child:  Column(
              children: [
               
                Image.asset(appLogo,
                  width: 200,),
                
                
              ],
            ),
          decoration:
              boxDecorationDefault(shape: BoxShape.circle, color: white),
        ),
       
        Text(language!.lblHelloUser, style: boldTextStyle(size: 24)).center(),
        16.height,
        Text(language!.lblSignUpSubTitle,
                style: primaryTextStyle(size: 18), textAlign: TextAlign.center)
            .center()
            .paddingSymmetric(horizontal: 32),
      ],
    );
  }

  Widget _buildFormWidget() {
    return Column(
      children: [
        32.height,
        AppTextField(
          textFieldType: TextFieldType.NAME,
          controller: fNameCont,
          focus: fNameFocus,
          nextFocus: lNameFocus,
          errorThisFieldRequired: language!.requiredText,
          decoration:
              inputDecoration(context, hint: language!.hintFirstNameTxt),
          suffix: ic_profile2.iconImage(size: 10).paddingAll(14),
          onChanged: (p0) => fName = p0,
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.NAME,
          controller: lNameCont,
          focus: lNameFocus,
          nextFocus: userNameFocus,
          errorThisFieldRequired: language!.requiredText,
          decoration: inputDecoration(context, hint: language!.hintLastNameTxt),
          suffix: ic_profile2.iconImage(size: 10).paddingAll(14),
          onChanged: (p0) => lName = p0,
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.EMAIL,
          controller: emailCont,
          focus: emailFocus,
          errorThisFieldRequired: language!.requiredText,
          nextFocus: mobileFocus,
          decoration: inputDecoration(context, hint: language!.hintEmailTxt),
          suffix: ic_message.iconImage(size: 10).paddingAll(14),
          onChanged: (p0) => email = p0,
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.PHONE,
          controller: mobileCont,
          focus: mobileFocus,
          readOnly: widget.isOTPLogin.validate() ? widget.isOTPLogin : false,
          errorThisFieldRequired: language!.requiredText,
          nextFocus: dOBFocus,
          decoration:
              inputDecoration(context, hint: language!.hintContactNumberTxt),
          suffix: ic_calling.iconImage(size: 10).paddingAll(14),
          onChanged: (p0) => mobile = p0,
          // ignore: body_might_complete_normally_nullable
          validator: (mobileCont) {
            String value = mobileCont.toString();
            String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
            RegExp regExp = new RegExp(pattern);
            if (value.length == 0) {
              return language!.phnrequiredtext;
            } else if (!regExp.hasMatch(value.toString())) {
              return language!.phnvalidation;
            }
          },
        ),
        16.height,
        AppTextField(
          textFieldType: TextFieldType.OTHER,
          controller: dateinput,
          focus: dOBFocus,
          errorThisFieldRequired: language!.requiredText,
          nextFocus: mobileFocus,
          decoration: inputDecoration(context, hint: "Select DOB"),
          suffix: ic_calendar.iconImage(size: 10).paddingAll(14),
          onTap: () async {
            FocusScope.of(context).requestFocus(new FocusNode());
            final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: selectedDate,
                firstDate: DateTime(1950, 8),
                lastDate: DateTime(2101));
            if (picked != null && picked != selectedDate)
              setState(() {
                dateOfBirth = picked;
                selectedDate = picked;
                String formattedDate = DateFormat('yyyy-MM-dd').format(picked);
                dateinput.text = formattedDate;
                dates = formattedDate;
                print(dateOfBirth);
              });
          },
        ),
        16.height,
        DropdownButtonFormField<GList>(
          decoration: inputDecoration(context, hint: "Select Gender"),
          isExpanded: true,
          value: selectgender,
          dropdownColor: context.cardColor,
          items: genderList.map((GList e) {
            return DropdownMenuItem<GList>(
              value: e,
              child: Text(
                e.name,
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (GList? value) async {
            hideKeyboard(context);
            selectgender = value;

            setState(() {});
          },
        ),
        
        16.height,
        DropdownButtonFormField<NList>(
          decoration: inputDecoration(context, hint: "Select Nationality"),
          isExpanded: true,
          value: selectnationality,
          dropdownColor: context.cardColor,
          items: nationalityList.map((NList e) {
            return DropdownMenuItem<NList>(
              value: e,
              child: Text(
                e.name,
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (NList? value) async {
            hideKeyboard(context);
            selectnationality = value;

            setState(() {});
          },
        ),
        16.height,
        DropdownButtonFormField<ResidenceRequest>(
          decoration: inputDecoration(context, hint: "Select your Residence"),
          isExpanded: true,
          value: res,
          dropdownColor: context.cardColor,
          items: reslist.map((ResidenceRequest e) {
            return DropdownMenuItem<ResidenceRequest>(
              value: e,
              child: Text(
                e.residenceName,
                style: primaryTextStyle(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (ResidenceRequest? value) async {
            hideKeyboard(context);
            res = value;

            setState(() {});
          },
        ),
        16.height,
        _buildTcAcceptWidget(),
        12.height,
        AppButton(
          text: language!.signUp,
          color: primaryColor,
          textStyle: boldTextStyle(color: white),
          width: context.width() - context.navigationBarHeight,
          onTap: () {
            if (widget.isOTPLogin == false)
              registerUser();
            else
              registerWithOTP();
          },
        ),
      ],
    );
  }

  Widget _buildTcAcceptWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SelectedItemWidget(isSelected: isAcceptedTc).onTap(() async {
          isAcceptedTc = !isAcceptedTc;
          setState(() {});
        }),
        16.width,
        RichTextWidget(
          list: [
            TextSpan(
                text: '${language!.lblAgree} ', style: secondaryTextStyle()),
            TextSpan(
              text: language!.lblTermsOfService,
              style: boldTextStyle(color: primaryColor, size: 14),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  //launchUrl(termsConditionUrl);
                },
            ),
            TextSpan(text: ' & ', style: secondaryTextStyle()),
            TextSpan(
              text: language!.lblPrivacyPolicy,
              style: boldTextStyle(color: primaryColor, size: 14),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  //launchUrl(privacyPolicyUrl);
                },
            ),
          ],
          textAlign: TextAlign.center,
        ).expand()
      ],
    ).paddingAll(16);
  }

  Widget _buildFooterWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextButton(
          onPressed: null,
          child: Text(language!.alreadyHaveAccountTxt,
              style: secondaryTextStyle()),
        ),
        TextButton(
          onPressed: () {
            finish(context);
          },
          child: Text(
            language!.lblSignInHere,
            style: boldTextStyle(
                color: primaryColor,
                decoration: TextDecoration.underline,
                fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(
        "",
        elevation: 0,
        color: context.scaffoldBackgroundColor,
        backWidget: BackWidget(iconColor: context.iconColor),
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
                    _buildTopWidget(),
                    _buildFormWidget(),
                    8.height,
                    _buildFooterWidget(),
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
