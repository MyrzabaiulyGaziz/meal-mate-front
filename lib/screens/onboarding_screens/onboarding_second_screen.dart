import 'package:flutter/material.dart';
import 'package:mealmate/core/app_export.dart';
import 'package:mealmate/widgets/custom_elevated_button.dart';

class OnboardingSecondScreen extends StatelessWidget {
  const OnboardingSecondScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Column(
            children: [
              SizedBox(
                height: 625.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 78.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 178.h,
                              margin: EdgeInsets.only(
                                left: 18.h,
                                right: 21.h,
                              ),
                              child: Text(
                                "Track what you eat!Reach your goals!",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleLarge22.copyWith(
                                  height: 1.31,
                                ),
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Text(
                              "Enjoy an easy and simple way to get healthy!",
                              style: CustomTextStyles
                                  .labelLargeAbhayaLibreSemiBoldBlack90002,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 586.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            _buildUser(context),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserOnerror,
                              height: 74.v,
                              width: 65.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(top: 86.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserOnerror87x79,
                              height: 87.v,
                              width: 79.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 116.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconVegetables220x203,
                              height: 220.v,
                              width: 203.h,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(right: 13.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconFoodSalad,
                              height: 350.v,
                              width: 309.h,
                              alignment: Alignment.topLeft,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconVegetables330x309,
                              height: 330.v,
                              width: 309.h,
                              alignment: Alignment.bottomLeft,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 67.v),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.signInScreen,
                    (_) => false,
                  );
                },
                width: 157.h,
                text: "Next",
                buttonStyle: CustomButtonStyles.none,
                decoration: CustomButtonStyles.gradientGreenAToGreenADecoration,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUser(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(
          top: 125.v,
          right: 14.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 31.h,
          vertical: 10.v,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup411,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 26.v),
            CustomImageView(
              imagePath: ImageConstant.imgUserOrangeA200,
              height: 25.v,
              width: 31.h,
              margin: EdgeInsets.only(right: 53.h),
            ),
            SizedBox(height: 45.v),
            CustomImageView(
              imagePath: ImageConstant.imgUserLime800,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(right: 114.h),
            ),
            SizedBox(height: 54.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 145.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUserGreenA70001,
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      margin: EdgeInsets.only(top: 6.v),
                    ),
                    Spacer(
                      flex: 35,
                    ),
                    Container(
                      height: 7.adaptSize,
                      width: 7.adaptSize,
                      margin: EdgeInsets.only(bottom: 35.v),
                      decoration: BoxDecoration(
                        color: appTheme.lightGreen700,
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 64,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgUserLightGreen70011x12,
                      height: 11.v,
                      width: 12.h,
                      margin: EdgeInsets.only(bottom: 30.v),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 42.v),
            CustomImageView(
              imagePath: ImageConstant.imgUserPinkA700,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(right: 72.h),
            ),
          ],
        ),
      ),
    );
  }
}
