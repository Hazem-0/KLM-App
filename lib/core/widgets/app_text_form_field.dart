import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klm_project/core/themes/app_colors.dart';
import '../themes/styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final bool isLast;
  const AppTextFormField({
    super.key,
    required this.hintText,
    this.isObscure,
    this.suffixIcon, required this.isLast,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: TextFormField(
        textInputAction: isLast?TextInputAction.send:TextInputAction.next,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
              width: 1.3.w,
              color: AppColors.teal,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: const BorderSide(
              color: AppColors.darkTeal,
            ),
          ),
          hintStyle: TextStyles.font15RegularLightGrey,
          hintText: hintText ?? "There is somthing wrong!",
          suffixIcon: suffixIcon,
          fillColor: AppColors.teal,
          filled: true,
        ),
        obscureText: isObscure ?? false,
        style: TextStyles.font15RegularLightGrey,
      ),
    );
  }
}
