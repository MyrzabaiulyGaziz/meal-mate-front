import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mealmate/core/app_export.dart';
import 'package:mealmate/widgets/custom_elevated_button.dart';

class SignUpSuccessScreen extends StatelessWidget {
  const SignUpSuccessScreen({Key? key})
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
              image: fs.Svg(
                ImageConstant.imgGroup957,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 53.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 34.v),
                CustomImageView(
                  imagePath: ImageConstant.imgIllustrationOnprimarycontainer,
                  height: 162.v,
                  width: 172.h,
                ),
                SizedBox(height: 35.v),
                Text(
                  "Congrats!",
                  style: CustomTextStyles.headlineLargeGreenA200,
                ),
                SizedBox(height: 13.v),
                Text(
                  "Your Profile Is Ready To Use",
                  style: CustomTextStyles.titleLarge23,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildGoToMenuButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoToMenuButton(BuildContext context) {
    return CustomElevatedButton(
      width: 157.h,
      text: "Go to menu",
      margin: EdgeInsets.only(
        left: 109.h,
        right: 109.h,
        bottom: 60.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGreenAToGreenADecoration,
    );
  }
}
