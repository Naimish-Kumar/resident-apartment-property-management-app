import 'package:user_app/model/dashboard_model.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../utils/colors.dart';

class CategoryWidget extends StatelessWidget {
  final Category categoryData;
  final double? width;
  final bool? isFromCategory;
  final IconData? icon;

  CategoryWidget(
      {required this.categoryData, this.width, this.isFromCategory, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? context.width() / 3 - 24,
      decoration: BoxDecoration(
        border: Border.all(color: context.dividerColor),
        borderRadius: radius(),
      ),
      child: Column(
        children: [
          Container(
            width: context.width(),
            height: width != null ? 115 : 75,
            decoration: boxDecorationDefault(
              boxShadow: defaultBoxShadow(blurRadius: 0, spreadRadius: 0),
              color: context.cardColor,
              borderRadius:
                  radiusOnly(topLeft: defaultRadius, topRight: defaultRadius),
            ),
            child: Icon(
              icon,
              color: primaryColor,
              size: 50,
            ),
            
          ),
          Text(
            '${categoryData.name.validate()}',
            style: boldTextStyle(size: 12),
            textAlign: TextAlign.center,
          ).paddingSymmetric(vertical: 16),
        ],
      ),
    );
  }
}
