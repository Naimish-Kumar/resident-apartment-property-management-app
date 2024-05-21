import 'package:user_app/component/loader_widget.dart';
import 'package:user_app/main.dart';
import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/common.dart';
import 'package:country_code_picker/country_code_picker.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';

class OTPDialog extends StatefulWidget {
  static String tag = '/OTPDialog';
  final String? verificationId;
  final String? phoneNumber;
  final bool? isCodeSent;
  //final PhoneAuthCredential? credential;

  OTPDialog(
      {this.verificationId,
      this.isCodeSent,
      this.phoneNumber,
      //this.credential
      });

  @override
  OTPDialogState createState() => OTPDialogState();
}

class OTPDialogState extends State<OTPDialog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController numberController = TextEditingController();

  String? countryCode = '';

  String otpCode = '';

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    appStore.setLoading(false);
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  Future<void> submit() async {
    appStore.setLoading(true);
  }

  Future<void> sendOTP() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      hideKeyboard(context);

      String number = '+$countryCode${numberController.text.trim()}';

      if (!number.startsWith('+')) {
        number = '+$countryCode${numberController.text.trim()}';
      }
      appStore.setLoading(true);
    }
  }

  //endregion

  @override
  Widget build(BuildContext context) {
    Widget _buildMainWidget({required bool isOtpSent}) {
      if (isOtpSent) {
        return Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(language!.lblenterPhnNumber, style: boldTextStyle()),
                16.height,
                Container(
                  child: Row(
                    children: [
                      CountryCodePicker(
                        initialSelection: '+91',
                        showCountryOnly: false,
                        showFlag: true,
                        showFlagDialog: true,
                        showOnlyCountryWhenClosed: false,
                        alignLeft: false,
                        dialogBackgroundColor: context.cardColor,
                        textStyle: primaryTextStyle(size: 18),
                        onInit: (c) {
                          countryCode = c!.dialCode;
                        },
                        onChanged: (c) {
                          countryCode = c.dialCode;
                        },
                      ),
                      2.width,
                      Form(
                        key: formKey,
                        child: AppTextField(
                          controller: numberController,
                          textFieldType: TextFieldType.PHONE,
                          decoration: inputDecoration(context),
                          autoFocus: true,
                          onFieldSubmitted: (s) {
                            sendOTP();
                          },
                        ).expand(),
                      ),
                    ],
                  ),
                ),
                30.height,
                AppButton(
                  onTap: () {
                    sendOTP();
                  },
                  text: language!.btnSendOtp,
                  color: primaryColor,
                  textStyle: boldTextStyle(color: white),
                  width: context.width(),
                )
              ],
            ),
            Observer(
              builder: (context) {
                return LoaderWidget().visible(appStore.isLoading);
              },
            )
          ],
        );
      } else {
        return Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(language!.enterOtp, style: boldTextStyle()),
                30.height,
                TextField(
                  maxLength:
                      6, // Set the maximum length of the input to 6 characters
                  style: primaryTextStyle(), // Apply a custom text style
                  textAlign: TextAlign
                      .center, // Center-align the text within the TextField
                  onChanged: (s) {
                    otpCode = s;
                  },
                  onSubmitted: (pin) {
                    otpCode = pin;
                    submit();
                  },
                ).fit(),
                // OTPTextField(
                //   length: 6,
                //   width: MediaQuery.of(context).size.width,
                //   fieldWidth: 35,
                //   style: primaryTextStyle(),
                //   textFieldAlignment: MainAxisAlignment.spaceAround,
                //   fieldStyle: FieldStyle.box,
                //   onChanged: (s) {
                //     otpCode = s;
                //   },
                //   onCompleted: (pin) {
                //     otpCode = pin;
                //     submit();
                //   },
                // ).fit(),
                30.height,
                AppButton(
                  onTap: () {
                    submit();
                  },
                  text: language!.confirm,
                  color: primaryColor,
                  textStyle: boldTextStyle(color: white),
                  width: context.width(),
                ),
                Observer(builder: (context) {
                  return LoaderWidget().visible(appStore.isLoading);
                }),
              ],
            ),
          ],
        );
      }
    }

    return Container(
      width: context.width(),
      padding: EdgeInsets.all(16),
      child: _buildMainWidget(isOtpSent: !widget.isCodeSent.validate()),
    );
  }
}
