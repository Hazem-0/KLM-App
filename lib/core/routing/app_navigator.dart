import 'package:flutter/material.dart';
import 'package:klm_project/core/routing/app_routes.dart';

class AppNavigator {
  AppNavigator._();

  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.home);
  }

  static void goToLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logIn);
  }

  static void goToSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUp);
  }

  static void goToSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settings);
  }

  static void goToSummarizer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.summarizer);
  }

  static void goToQuestionAnswering(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questionAnswering);
  }

  static void goToQuestionGenerator(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.qestionGenrator);
  }

  static void goToBookmarks(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookmarks);
  }

  static void goToAnalyzer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.analyzer);
  }

  static void goToHomeAndClear(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.home,
      (route) => false,
    );
  }

  static void goBack(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
  }

  static void goToLoginAndClear(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
      context,
      AppRoutes.logIn,
      (route) => false,
    );
  }
}
