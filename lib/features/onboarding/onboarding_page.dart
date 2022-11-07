import 'dart:developer';

import 'package:estudos/core/constants/app_colors.dart';
import 'package:estudos/core/constants/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/multi_text_button.dart';
import '../../core/widgets/my_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset('assets/images/onboarding.png'),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Spend Smarter \n Save More',
                textAlign: TextAlign.center,
                style: AppTextStyles.mediumText
                    .copyWith(color: AppColors.greenLightTwo),
              ),
              const SizedBox(
                height: 16,
              ),
              MyButton(
                text: 'Get Started',
                onTap: () {
                  log('message');
                },
              ),
              MultiTextButton(
                onTap: () => log('message'),
                children: [
                  Text(
                    'Already have an account? ',
                    style: AppTextStyles.smallText
                        .copyWith(color: AppColors.grey),
                  ),
                  Text(
                    ' Log In',
                    style: AppTextStyles.smallText
                        .copyWith(color: AppColors.greenLightTwo),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
