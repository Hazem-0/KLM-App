import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klm_project/features/Authentication/veiw/pages/login_veiw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(412,917),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_,child) {
        return const MaterialApp(
          title: 'KLM App',
         
          debugShowCheckedModeBanner: false,
          home: LoginView(),
        );
      }
    );
  }
}
