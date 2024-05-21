import 'package:user_app/main.dart';
import 'package:user_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

Future<Color> getMaterialYouData() async {
  if (appStore.useMaterialYouTheme && await isAndroid12Above()) {
    primaryColor =  primaryColor;
  } else {
    primaryColor = defaultPrimaryColor;
  }

  return primaryColor;
}
