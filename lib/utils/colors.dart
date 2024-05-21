import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

var defaultPrimaryColor = Color.fromARGB(210, 14, 112, 241);
var primaryColor = Color.fromARGB(207, 3, 69, 250);
const secondaryPrimaryColor = Color(0xfff3f4fa);
//Text Color
const appTextPrimaryColor = Color(0xff1C1F34);
const appTextSecondaryColor = Color(0xff6C757D);
const cardColor = Color(0xFFF6F7F9);
const borderColor = Color(0xFFEBEBEB);

const scaffoldColorDark = Color(0xFF090909);
const scaffoldSecondaryDark = Color(0xFF1E1E1E);
const appButtonColorDark = Color(0xFF282828);

const ratingBarColor = Color(0xffff8800);
const verifyAcColor = Colors.blue;
const favouriteColor = Colors.red;
const unFavouriteColor = Colors.grey;

//Status Color
const pendingColor = Color(0xFFEA2F2F);
const acceptColor = Color(0xFF00968A);
const onGoingColor = Color(0xFFFD6922);
const inProgressColor = Color(0xFFFD6922);
const holdColor = Color(0xFFFFBD49);
const cancelledColor = Color(0xffFF0303);
const rejectedColor = Color(0xFF400D0A);
const failedColor = Color(0xFFC41520);
const completedColor = Color(0xFF3CAE5C);

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double? screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight!;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double? screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth!;
}
