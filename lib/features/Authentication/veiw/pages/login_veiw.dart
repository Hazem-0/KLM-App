import 'package:flutter/material.dart';
import 'package:klm_project/core/themes/app_colors.dart';
import 'package:klm_project/features/Authentication/veiw/widgets/operation_selection.dart';
import 'package:klm_project/features/Authentication/veiw/widgets/third_party_auth.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gradient.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Image.asset("assets/images/logo.png"),
            const SizedBox(height: 20),
            const OperationSelection(),
            const SizedBox(height: 30),
            Container(
              width: 347,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.paleTeal.withOpacity(0.35),
              ),
              child: const Form(
                child: Column(
                  children: [
                    SizedBox(
                      height: 230,
                    ),
                    ThirdPartyAuth()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
