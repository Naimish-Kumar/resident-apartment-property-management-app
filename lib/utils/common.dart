
import 'package:user_app/model/service_detail_model.dart';
import 'package:user_app/screens/serviceprovider/service_provider.dart';
import 'package:user_app/utils/extensions/string_extensions.dart';
import 'package:user_app/utils/model_keys.dart';

import 'package:user_app/utils/colors.dart';
import 'package:user_app/utils/images.dart';
import 'package:user_app/utils/widgets/cached_nework_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
 
import 'package:url_launcher/url_launcher.dart' as url_launcher;

import '../main.dart';
import 'constant.dart';

void calllaunchUrl(String? url) {
  if (url.validate().isNotEmpty) {
    // ignore: deprecated_member_use
    url_launcher.launch(url!);
  }
}

void launchUrlCustomTab(String? url) {
  if (url.validate().isNotEmpty) {
    launch(
      url!,
      customTabsOption: CustomTabsOption(
        enableDefaultShare: true,
        enableInstantApps: true,
        enableUrlBarHiding: true,
        showPageTitle: true,
        toolbarColor: primaryColor,
      ),
    );
  }
}

void launchCall(String? url) {
  if (url.validate().isNotEmpty) {
    // ignore: deprecated_member_use
    url_launcher.launch('tel:' + url!);
  }
}

List<LanguageDataModel> languageList() {
  return [
    LanguageDataModel(id: 1, name: 'English', languageCode: 'en', fullLanguageCode: 'en-US', flag: 'images/flag/ic_us.png'),
    LanguageDataModel(id: 2, name: 'Hindi', languageCode: 'hi', fullLanguageCode: 'hi-IN', flag: 'images/flag/ic_india.png'),
    LanguageDataModel(id: 3, name: 'Arabic', languageCode: 'ar', fullLanguageCode: 'ar-AR', flag: 'images/flag/ic_ar.png'),
    LanguageDataModel(id: 4, name: 'Gujarati', languageCode: 'gu', fullLanguageCode: 'gu-GU', flag: 'images/flag/ic_india.png'),
    LanguageDataModel(id: 5, name: 'African', languageCode: 'af', fullLanguageCode: 'ar-AF', flag: 'images/flag/ic_af.png'),
    LanguageDataModel(id: 6, name: 'Dutch', languageCode: 'nl', fullLanguageCode: 'nl-NL', flag: 'images/flag/ic_nl.png'),
    LanguageDataModel(id: 7, name: 'French', languageCode: 'fr', fullLanguageCode: 'fr-FR', flag: 'images/flag/ic_fr.png'),
    LanguageDataModel(id: 8, name: 'German', languageCode: 'de', fullLanguageCode: 'de-DE', flag: 'images/flag/ic_de.png'),
    LanguageDataModel(id: 9, name: 'Indonesian', languageCode: 'id', fullLanguageCode: 'id-ID', flag: 'images/flag/ic_id.png'),
    LanguageDataModel(id: 10, name: 'Spanish', languageCode: 'es', fullLanguageCode: 'es-ES', flag: 'images/flag/ic_es.jpg'),
    LanguageDataModel(id: 11, name: 'Turkish', languageCode: 'tr', fullLanguageCode: 'tr-TR', flag: 'images/flag/ic_tr.png'),
    LanguageDataModel(id: 12, name: 'Vietnam', languageCode: 'vi', fullLanguageCode: 'vi-VI', flag: 'images/flag/ic_vi.png'),
    LanguageDataModel(id: 13, name: 'Albanian', languageCode: 'sq', fullLanguageCode: 'sq-SQ', flag: 'images/flag/ic_arbanian.png'),
    LanguageDataModel(id: 14, name: 'Portugal', languageCode: 'pt', fullLanguageCode: 'pt-PT', flag: 'images/flag/ic_pt.png'),
  ];
}

InputDecoration inputDecoration(BuildContext context, {Widget? prefixIcon, String? hint}) {
  return InputDecoration(
    contentPadding: EdgeInsets.only(left: 12, bottom: 10, top: 10, right: 10),
    labelText: hint,
    labelStyle: primaryTextStyle(),
    alignLabelWithHint: true,
    prefixIcon: prefixIcon,
    enabledBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(color: Colors.transparent, width: 0.0),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(color: Colors.red, width: 0.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(color: Colors.red, width: 1.0),
    ),
    errorMaxLines: 2,
    errorStyle: primaryTextStyle(color: Colors.red, size: 12),
    focusedBorder: OutlineInputBorder(
      borderRadius: radius(defaultRadius),
      borderSide: BorderSide(color: primaryColor, width: 0.0),
    ),
    filled: true,
    fillColor: context.cardColor,
  );
}

String parseHtmlString(String? htmlString) {
  return parse(parse(htmlString).body!.text).documentElement!.text;
}

Future<String> getUserLocation() async {
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  List<Placemark> placeMark = await placemarkFromCoordinates(position.latitude, position.longitude);

  setValue(LATITUDE, position.latitude);
  setValue(LONGITUDE, position.longitude);
  Placemark place = placeMark[0];

  String address = "${place.name != null ? place.name : place.subThoroughfare}, ${place.subLocality}, ${place.locality}, ${place.administrativeArea} ${place.postalCode}, ${place.country}";
  setValue(CURRENT_ADDRESS, address);
  return address;
}

String formatDate(String? dateTime, {String format = DATE_FORMAT_1, bool isFromMicrosecondsSinceEpoch = false}) {
  if (isFromMicrosecondsSinceEpoch) {
    return DateFormat(format).format(DateTime.fromMicrosecondsSinceEpoch(dateTime.validate().toInt() * 1000));
  } else {
    return DateFormat(format).format(DateTime.parse(dateTime.validate()));
  }
}

 

bool get isRTL => RTLLanguage.contains(appStore.selectedLanguageCode);

bool get getMobileLoginType => appStore.loginType == LoginTypeOTP;

bool get getGoogleLoginType => appStore.loginType == LoginTypeGoogle;

bool get getUserLoginType => appStore.loginType == LoginTypeUser;

Widget noDataFound(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      cachedImage(notDataFoundImg, height: 200, width: 200),
      8.height,
      Text(language!.lblNoData, style: boldTextStyle()),
    ],
  );
}

num calculateTotalAmount({
  required num servicePrice,
  required int qty,
  required num? serviceDiscountPercent,
  CouponData? couponData,
  ServiceDetail? detail,
  required List<Taxe>? taxes,
}) {
  double totalAmount = 0.0;
  double discountPrice = 0.0;
  double taxAmount = 0.0;
  double couponDiscountAmount = 0.0;

  taxes.validate().forEach((element) {
    if (element.type == SERVICE_TYPE_PERCENT) {
      element.totalCalculatedValue = ((servicePrice * qty) * element.value.validate()) / 100;
    } else {
      element.totalCalculatedValue = element.value.validate();
    }
    taxAmount += element.totalCalculatedValue.validate().toDouble();
  });

  if (serviceDiscountPercent.validate() != 0) {
    totalAmount = (servicePrice * qty) - (((servicePrice * qty) * (serviceDiscountPercent!)) / 100);
    discountPrice = servicePrice * qty - totalAmount;

    totalAmount = (servicePrice * qty) - discountPrice - couponDiscountAmount + taxAmount;
  } else {
    totalAmount = (servicePrice * qty) - couponDiscountAmount + taxAmount;
  }

  if (couponData != null) {
    if (couponData.discount_type.validate() == SERVICE_TYPE_FIXED) {
      totalAmount = totalAmount - couponData.discount.validate();
      couponDiscountAmount = couponData.discount.validate().toDouble();
    } else {
      totalAmount = totalAmount - ((totalAmount * couponData.discount.validate()) / 100);
      num calValue = (totalAmount * couponData.discount.validate());
      couponDiscountAmount = calValue / 100;
    }
    if (detail != null) {
      detail.couponCode = couponData.code.validate().toString();
      detail.appliedCouponData = couponData;
      detail.couponDiscountAmount = couponDiscountAmount.validate();
    }
  }

  if (detail != null) {
    detail.totalAmount = totalAmount.toStringAsFixed(decimalPoint).validate().toDouble();
    detail.qty = qty.validate();
    detail.discountPrice = discountPrice.toStringAsFixed(decimalPoint).validate().toDouble();
    detail.taxAmount = taxAmount.toStringAsFixed(decimalPoint).validate().toDouble();
  }
  return totalAmount;
}

 

 

Widget commonLocationWidget({required BuildContext context, required Function() onTap, Color? color}) {
  return Observer(
    builder: (_) => IconButton(
      icon: ic_active_location.iconImage(size: 24, color: appStore.isCurrentLocation ? color ?? Colors.white : color ?? Colors.white),
      visualDensity: VisualDensity.compact,
      onPressed: () {
         ServiceProviderScreen().launch(context,
                                         isNewTask: true,
                                         pageRouteAnimation:
                                             PageRouteAnimation.Slide);
        // Permissions.cameraFilesAndLocationPermissionsGranted().then((value) async {
        //   await setValue(permissionStatus, value);

        //   if (value) {
        //     showInDialog(
        //       context,
        //       contentPadding: EdgeInsets.zero,
        //       builder: (p0) {
        //         return AppCommonDialog(
        //           title: language!.lblAlert,
        //           child: LocationServiceDialog(),
        //         );
        //       },
        //     ).then(
        //       (value) async {
        //         if (value != null) {
        //           await setValue(permissionStatus, value);
        //           onTap.call();
        //         }
        //       },
        //     );
        //   }
        // }).catchError((e) {
        //   toast(e.toString(), print: true);
        // });
      },
    ),
  );
}

Future deleteDialog(
  BuildContext context, {
  final String? title,
  final String? subTitle,
  required final Function() onSuccess,
  final Function()? onCancel,
}) async {
  return showInDialog(
    context,
    contentPadding: EdgeInsets.zero,
    builder: (c) {
      return Container(
        width: context.width(),
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
              child: Image.asset(ic_delete_dialog, height: 60, width: 60),
            ),
            32.height,
            Text(title ?? language!.lblDeleteAddress, style: boldTextStyle(size: 22)),
            16.height,
            Text(subTitle ?? language!.lblDeleteSunTitle, style: secondaryTextStyle(), textAlign: TextAlign.center),
            24.height,
            Row(
              children: [
                AppButton(
                  text: language!.lblCancel,
                  textColor: textPrimaryColorGlobal,
                  color: context.cardColor,
                  onTap: onCancel ??
                      () {
                        finish(context);
                      },
                ).expand(),
                16.width,
                AppButton(
                  text: language!.lblDelete,
                  color: primaryColor,
                  textColor: Colors.white,
                  onTap: () {
                    onSuccess.call();
                    finish(context);
                  },
                ).expand(),
              ],
            )
          ],
        ),
      );
    },
  );
}

Widget circleImage({required String image, double size = 24}) {
  return cachedImage(image, width: size, height: size, fit: BoxFit.cover).cornerRadiusWithClipRRect(90);
}

// Logic For Calculate Time
String calculateTimer(int secTime) {
  // ignore: unused_local_variable
  int hour = 0, minute = 0, seconds = 0;

  hour = secTime ~/ 3600;

  minute = ((secTime - hour * 3600)) ~/ 60;

  seconds = secTime - (hour * 3600) - (minute * 60);

  String hourLeft = hour.toString().length < 2 ? "0" + hour.toString() : hour.toString();

  String minuteLeft = minute.toString().length < 2 ? "0" + minute.toString() : minute.toString();

  String minutes = minuteLeft == '00' ? '01' : minuteLeft;

  String result = "$hourLeft:$minutes";

  return result;
}

num hourlyCalculation({required int secTime, required num price}) {
  num result = 0;

  String time = calculateTimer(secTime);
  String perMinuteCharge = (price / 60).toStringAsFixed(2);

  if (time == "01:00") {
    String value = (price * 1).toStringAsFixed(2);
    result = value.toDouble();
  } else {
    List<String> data = time.split(":");
    if (data.first == "00") {
      String value;
      if (secTime < 60) {
        value = (perMinuteCharge.toDouble() * 1).toStringAsFixed(2);
      } else {
        value = (perMinuteCharge.toDouble() * data.last.toDouble()).toStringAsFixed(2);
      }

      result = value.toDouble();
    } else {
      if (data.first.toInt() > 01 && data.last.toInt() == 00) {
        String value = (price * data.first.toInt()).toStringAsFixed(2);
        result = value.toDouble();
      } else {
        String value = (price * data.first.toInt()).toStringAsFixed(2);
        String extraMinuteCharge = (data.last.toDouble() * perMinuteCharge.toDouble()).toStringAsFixed(2);
        String finalPrice = (value.toDouble() + extraMinuteCharge.toDouble()).toStringAsFixed(2);
        result = finalPrice.toDouble();
      }
    }
  }

  return result.toDouble();
}

Brightness getStatusBrightness({required bool val}) {
  return val ? Brightness.light : Brightness.dark;
}

String getPaymentStatusText(String? status) {
  if (status == SERVICE_PAYMENT_STATUS_PAID) {
    return 'Paid';
  } else if (status == SERVICE_PAYMENT_STATUS_PENDING) {
    return 'Pending';
  } else if (status != null) {
    return 'Pending Approval';
  } else {
    return "";
  }
}

String getReasonText(String val) {
  if (val == BookingStatusKeys.cancelled) {
    return language!.lblReasonCancelling;
  } else if (val == BookingStatusKeys.rejected) {
    return language!.lblReasonRejecting;
  } else if (val == BookingStatusKeys.failed) {
    return language!.lblFailed;
  }
  return '';
}

bool get isUserTypeHandyman => appStore.userType == UserTypeHandyman;

bool get isUserTypeProvider => appStore.userType == UserTypeProvider;

bool get isUserTypeUser => appStore.userType == UserTypeUser;

bool get isLoginTypeUser => appStore.loginType == LoginTypeUser;

bool get isLoginTypeGoogle => appStore.loginType == LoginTypeGoogle;

bool get isLoginTypeOTP => appStore.loginType == LoginTypeOTP;
