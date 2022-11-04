import 'dart:math';

import 'package:estudos/core/constants/app_colors.dart';
import 'package:estudos/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 150,
              color: AppColors.iceWhite,
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset('assets/images/onboarding.png'),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Spend Smarter',
                    style: AppTextStyles.mediumText
                        .copyWith(color: AppColors.greenLightTwo),
                  ),
                  Text(
                    'Save More',
                    style: AppTextStyles.mediumText
                        .copyWith(color: AppColors.greenLightTwo),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    width: 358,
                    height: 64,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.greenLightTwo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Get Started',
                          style: AppTextStyles.intermediaryText
                              .copyWith(color: AppColors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: AppTextStyles.smallText
                              .copyWith(color: AppColors.grey),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Log In',
                          style: AppTextStyles.smallText
                              .copyWith(color: AppColors.greenLightTwo),
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
