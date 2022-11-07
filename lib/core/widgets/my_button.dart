import 'package:estudos/core/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class MyButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  const MyButton({Key? key, this.onTap, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const BorderRadius _borderRadius = BorderRadius.all(Radius.circular(36));

    return Material(
      child: Ink(
        height: 48,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          gradient: LinearGradient(
            colors: onTap != null ? AppColors.greenGradient : AppColors.greyGradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: InkWell(
          borderRadius: _borderRadius,
          onTap: onTap,
          child: Align(
            child: Text(
              text,
              style: AppTextStyles.intermediaryText.copyWith(
                  color: AppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
