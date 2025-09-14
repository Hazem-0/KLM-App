import 'package:flutter/material.dart';
import 'package:klm_project/core/themes/app_colors.dart';
import 'package:klm_project/core/themes/font_weight_helper.dart';

class TextStyles {
  TextStyles._();
  static const TextStyle font24Bold = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font15RegularLightGrey = TextStyle(
    fontSize: 15,
    fontWeight: FontWeightHelper.regular,
    color: AppColors.lightGrey,
  );
  static const TextStyle font20RegularWhite = TextStyle(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font20BoldBlack = TextStyle(
    fontSize: 20,
    color: AppColors.black,
    fontWeight: FontWeightHelper.black,
  );
  static const TextStyle font18RegularDarkTeal = TextStyle(
    fontSize: 18,
    color: AppColors.darkTeal,
    fontWeight: FontWeightHelper.regular,
  );
  static const TextStyle font32BoldWhite = TextStyle(
    fontSize: 32,
    color: AppColors.white,
    fontWeight: FontWeightHelper.bold,
  );
  static const TextStyle font20BoldWhite = TextStyle(
    fontSize: 20,
    color: AppColors.white,
    fontWeight: FontWeightHelper.bold,
  );
}
