import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/core/models/onboarding_model.dart';
import 'package:dating_app/core/themes/app_colors.dart';
import 'package:dating_app/core/widgets/custom_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.5,
                viewportFraction: 0.66,
                animateToClosest: true,
                autoPlay: false,
                initialPage: 0,
                reverse: false,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              itemCount: onBoardingItems.length,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  onBoardingItems[index].imagePath,
                  fit: BoxFit.cover,
                );
              },
            ),
            const SizedBox(height: 44.0),
            Text(
              onBoardingItems[currentIndex].title,
              style: const TextStyle(
                color: AppColors.primaryColor,
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                onBoardingItems[currentIndex].description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 26.0),
            DotsIndicator(
              dotsCount: onBoardingItems.length,
              position: currentIndex.toDouble(),
              decorator: const DotsDecorator(
                color: AppColors.borderColor, // Inactive color
                activeColor: AppColors.primaryColor,
              ),
            ),
            const SizedBox(height: 40.0),
            CustomButton(
              backgroundColor: AppColors.primaryColor,
              text: 'Create an account',
              textColor: Colors.white,
              onPressed: () {},
            ),
            const SizedBox(height: 30.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    'Sign in',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 30.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
