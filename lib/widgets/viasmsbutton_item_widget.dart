import 'package:flutter/material.dart';
import 'package:mealmate/core/app_export.dart';

// ignore: must_be_immutable
class ViasmsbuttonItemWidget extends StatelessWidget {
  const ViasmsbuttonItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineIndigoA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconMessage,
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(
              top: 6.v,
              bottom: 5.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Via sms:",
                  style: CustomTextStyles.bodyLargeAbhayaLibreErrorContainer,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 153.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 8.v,
                        width: 44.h,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 8.v,
                        width: 44.h,
                        margin: EdgeInsets.only(
                          top: 6.v,
                          bottom: 7.v,
                        ),
                      ),
                      Text(
                        "4235",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
