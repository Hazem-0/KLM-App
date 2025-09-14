// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:klm_project/core/themes/app_colors.dart';
import 'package:klm_project/core/themes/styles.dart';

class AppTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const AppTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.darkTeal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      child: Text(
        text,
        style: TextStyles.font20BoldWhite,
      ),
    );
  }
}
