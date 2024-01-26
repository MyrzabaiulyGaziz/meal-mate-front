import 'package:flutter/material.dart';
import 'package:mealmate/core/app_export.dart';
import 'package:mealmate/widgets/custom_elevated_button.dart';

class OnboardingFirstScreen extends StatelessWidget {
  const OnboardingFirstScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 38.v),
          child: Column(
            children: [
              SizedBox(
                height: 488.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 453.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 30.v),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      ImageConstant.imgGroup412,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgUser,
                                            height: 10.v,
                                            width: 12.h,
                                            margin: EdgeInsets.only(
                                              top: 9.v,
                                              bottom: 53.v,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUserOnerror,
                                            height: 74.v,
                                            width: 69.h,
                                            margin: EdgeInsets.only(left: 30.h),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 36.v),
                                    Padding(
                                      padding: EdgeInsets.only(left: 12.h),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserLightGreen700,
                                            height: 25.v,
                                            width: 31.h,
                                            margin:
                                                EdgeInsets.only(bottom: 7.v),
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserLightGreen70020x20,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            margin: EdgeInsets.only(
                                              left: 138.h,
                                              top: 12.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 13.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgUserRed700,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(left: 106.h),
                                    ),
                                    SizedBox(height: 2.v),
                                    Container(
                                      height: 7.adaptSize,
                                      width: 7.adaptSize,
                                      margin: EdgeInsets.only(left: 166.h),
                                      decoration: BoxDecoration(
                                        color: appTheme.lightGreen700,
                                        borderRadius: BorderRadius.circular(
                                          3.h,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 51.v),
                                    Padding(
                                      padding: EdgeInsets.only(right: 213.h),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserOnerror88x49,
                                            height: 88.v,
                                            width: 49.h,
                                            margin: EdgeInsets.only(
                                              top: 3.v,
                                              bottom: 21.v,
                                            ),
                                          ),
                                          Spacer(),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgUserSecondarycontainer,
                                            height: 36.adaptSize,
                                            width: 36.adaptSize,
                                            margin: EdgeInsets.only(top: 77.v),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgUserRed70010x9,
                                            height: 10.v,
                                            width: 9.h,
                                            margin: EdgeInsets.only(
                                              left: 16.h,
                                              bottom: 103.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 25.v),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgUserOnerror87x79,
                              height: 87.v,
                              width: 79.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 20.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconVegetables,
                              height: 236.v,
                              width: 229.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 12.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIconFruits,
                              height: 200.v,
                              width: 193.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 3.h,
                                bottom: 74.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIconVegetables274x269,
                      height: 274.v,
                      width: 269.h,
                      alignment: Alignment.bottomRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIconVegetables221x219,
                      height: 221.v,
                      width: 219.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 103.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 3.v),
              Container(
                width: 211.h,
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "Find your Comfort and Healthy Food here",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleLarge22.copyWith(
                    height: 1.31,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              SizedBox(
                width: 245.h,
                child: Text(
                  "Here You Can find a dish for every taste and color. Enjoy!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles
                      .labelLargeAbhayaLibreSemiBoldBlack90002
                      .copyWith(
                    height: 1.81,
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoutes.onboardingSecondScreen,
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
}
