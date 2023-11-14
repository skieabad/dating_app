import 'package:dating_app/core/themes/app_colors.dart';
import 'package:dating_app/core/views/sign_up_view.dart';
import 'package:flutter/material.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Sk Modernist',
        primaryColor: AppColors.primaryColor,
      ),
      home: const SignUpView(),
    );
  }
}
