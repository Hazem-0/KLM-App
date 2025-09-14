import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klm_project/core/helper/spacing.dart';
import 'package:klm_project/core/themes/app_colors.dart';
import 'package:klm_project/core/themes/styles.dart';
import 'package:klm_project/core/widgets/app_text_button.dart';
import 'package:klm_project/core/widgets/app_text_form_field.dart';
import 'package:klm_project/features/Authentication/veiw/widgets/operation_selection.dart';
import 'package:klm_project/features/Authentication/veiw/widgets/third_party_auth.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gradient.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              verticalSpace(50),
              Image.asset("assets/images/logo.png"),
              const SizedBox(height: 20),
              const OperationSelection(),
              const SizedBox(height: 30),
              Container(
                width: 347.w,
                height: 400.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.paleTeal.withOpacity(0.35),
                ),
                child: Form(
                  child: Column(
                    children: [
                      verticalSpace(20.h),
                      const Text(
                        "Login",
                        style: TextStyles.font20BoldWhite,
                      ),
                      verticalSpace(20.h),
                      const AppTextFormField(
                        hintText: "Email",
                        isLast: false,
                      ),
                      verticalSpace(20.h),
                      AppTextFormField(
                        isLast: true,
                        hintText: "Password",
                        isObscure: isObscure,
                        suffixIcon: GestureDetector(
                          onTap: () => setState(() {
                            isObscure = !isObscure;
                          }),
                          child: Icon(
                            isObscure ? Icons.visibility_off : Icons.visibility,
                            color: AppColors.lightGrey,
                          ),
                        ),
                      ),
                      verticalSpace(10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30.w),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "Forgot Password?",
                              style: TextStyles.font15RegularLightGrey,
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(20.h),
                      SizedBox(
                        width: 287.w,
                        height: 50.h,
                        child: AppTextButton(
                          text: "Login",
                          onPressed: () {},
                        ),
                      ),
                      verticalSpace(20.h),
                      const ThirdPartyAuth(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
