import 'package:dating_app/core/themes/app_colors.dart';
import 'package:dating_app/core/widgets/custom_button.dart';
import 'package:dating_app/core/widgets/custom_card.dart';
import 'package:dating_app/core/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Image(
                  image: AssetImage('assets/logo.png'),
                ),
                const SizedBox(height: 78.0),
                const Text(
                  'Sign up to continue',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(height: 32.0),
                CustomButton(
                  text: 'Continue with email',
                  textColor: Colors.white,
                  backgroundColor: AppColors.primaryColor,
                  onPressed: () {},
                ),
                const SizedBox(height: 20.0),
                CustomButton(
                  text: 'Use phone number',
                  backgroundColor: AppColors.backgroundColor,
                  borderColor: AppColors.borderColor,
                  onPressed: () {},
                ),
                const SizedBox(height: 64.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomDivider(),
                    SizedBox(width: 8.0),
                    Text(
                      'or sign up with',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    CustomDivider(),
                  ],
                ),
                const SizedBox(height: 50.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCard(
                      onTap: () {},
                      child: Image.asset('assets/facebook.png'),
                    ),
                    const SizedBox(width: 20.0),
                    CustomCard(
                      onTap: () {},
                      child: Image.asset('assets/google.png'),
                    ),
                    const SizedBox(width: 20.0),
                    CustomCard(
                      onTap: () {},
                      child: Image.asset('assets/apple.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 76.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Terms of use',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(width: 32.0),
                    Text(
                      'Privacy Policy',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
