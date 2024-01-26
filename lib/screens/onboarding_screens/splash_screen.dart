import 'package:flutter/material.dart';
import 'package:mealmate/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.img11Onboarding,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                CustomImageView(
                  imagePath: ImageConstant.img399844149441,
                  height: 233.adaptSize,
                  width: 233.adaptSize,
                  radius: BorderRadius.circular(
                    89.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
