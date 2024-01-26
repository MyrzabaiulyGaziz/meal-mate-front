import '/widgets/viasmsbutton_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:mealmate/core/app_export.dart';
import 'package:mealmate/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:mealmate/widgets/app_bar/appbar_title_image.dart';
import 'package:mealmate/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mealmate/widgets/app_bar/custom_app_bar.dart';
import 'package:mealmate/widgets/custom_elevated_button.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildMainStack(context),
                  SizedBox(height: 15.v),
                  _buildViaSMSButton(context),
                  Spacer()
                ])),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 204.v,
            width: 350.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 43.v,
                  width: 15.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 45.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector6x3,
                  height: 6.v,
                  width: 3.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 67.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector26x10,
                  height: 26.v,
                  width: 10.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 57.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector47x51,
                  height: 47.v,
                  width: 51.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 69.v, right: 37.h)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector12x15,
                  height: 12.v,
                  width: 15.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 90.v, right: 64.h)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector48x53,
                  height: 48.v,
                  width: 53.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 10.h, bottom: 47.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector14x16,
                  height: 14.v,
                  width: 16.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 36.h, bottom: 61.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector8x6,
                  height: 8.v,
                  width: 6.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 30.h, bottom: 75.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector12x10,
                  height: 12.v,
                  width: 10.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 45.h, bottom: 73.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector8x7,
                  height: 8.v,
                  width: 7.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 39.h, bottom: 77.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector4x4,
                  height: 4.adaptSize,
                  width: 4.adaptSize,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(right: 42.h, bottom: 72.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector55x36,
                  height: 55.v,
                  width: 36.h,
                  alignment: Alignment.centerRight),
              CustomImageView(
                  imagePath: ImageConstant.imgVector20x22,
                  height: 20.v,
                  width: 22.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 87.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector56x50,
                  height: 56.v,
                  width: 50.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 54.v, right: 94.h)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector6x6,
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 94.v, right: 125.h)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector67x9,
                  height: 67.v,
                  width: 9.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 62.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector41x36,
                  height: 41.v,
                  width: 36.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 79.h)),
              CustomImageView(
                  imagePath: ImageConstant.imgVector16x13,
                  height: 16.v,
                  width: 13.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 94.h)),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 128.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Forgot password?",
                                style: theme.textTheme.headlineSmall),
                            SizedBox(height: 23.v),
                            SizedBox(
                                width: 221.h,
                                child: Text(
                                    "Select which contact details should we use to reset your password",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .labelLargeAbhayaLibreSemiBoldBlack90002
                                        .copyWith(height: 1.81)))
                          ]))),
              CustomAppBar(
                  centerTitle: true,
                  title: Column(children: [
                    Row(children: [
                      SizedBox(
                          height: 83.v,
                          width: 190.83.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Container(
                                height: 63.85.v,
                                width: 161.70001.h,
                                margin: EdgeInsets.only(
                                    left: 27.h, right: 1.h, bottom: 19.v),
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      AppbarTitleImage(
                                          imagePath:
                                              ImageConstant.imgVector29x67,
                                          margin: EdgeInsets.only(
                                              right: 94.h, bottom: 34.v)),
                                      Align(
                                          alignment: Alignment.topLeft,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 61.v),
                                              child: SizedBox(
                                                  width: 160.h,
                                                  child: Divider(
                                                      indent: 48.h,
                                                      endIndent: 62.h)))),
                                      AppbarTitleImage(
                                          imagePath:
                                              ImageConstant.imgVector58x70,
                                          margin: EdgeInsets.only(
                                              left: 52.h,
                                              right: 38.h,
                                              bottom: 5.v)),
                                      AppbarTitleImage(
                                          imagePath:
                                              ImageConstant.imgVector16x53,
                                          margin: EdgeInsets.only(
                                              left: 82.h,
                                              right: 26.h,
                                              bottom: 47.v)),
                                      AppbarTitleImage(
                                          imagePath:
                                              ImageConstant.imgVector60x74,
                                          margin: EdgeInsets.only(
                                              left: 87.h, top: 3.v)),
                                      AppbarTitleImage(
                                          imagePath: ImageConstant.imgVector2,
                                          margin: EdgeInsets.fromLTRB(
                                              74.h, 15.v, 75.h, 40.v)),
                                      AppbarTitleImage(
                                          imagePath: ImageConstant.imgVector3,
                                          margin: EdgeInsets.fromLTRB(
                                              77.h, 22.v, 73.h, 29.v)),
                                      AppbarTitleImage(
                                          imagePath: ImageConstant.imgVector5x5,
                                          margin: EdgeInsets.fromLTRB(
                                              72.h, 24.v, 84.h, 34.v)),
                                      AppbarTitleImage(
                                          imagePath: ImageConstant.imgVector5x5,
                                          margin: EdgeInsets.fromLTRB(
                                              65.h, 25.v, 90.h, 32.v)),
                                      AppbarTitleImage(
                                          imagePath: ImageConstant.imgVector8x9,
                                          margin: EdgeInsets.fromLTRB(
                                              75.h, 29.v, 77.h, 26.v)),
                                      AppbarTitleImage(
                                          imagePath: ImageConstant.imgVector4,
                                          margin: EdgeInsets.fromLTRB(
                                              86.h, 30.v, 69.h, 27.v)),
                                      AppbarTitleImage(
                                          imagePath:
                                              ImageConstant.imgVector11x11,
                                          margin: EdgeInsets.fromLTRB(
                                              89.h, 35.v, 60.h, 17.v)),
                                      AppbarTitleImage(
                                          imagePath: ImageConstant.imgVector5x5,
                                          margin: EdgeInsets.fromLTRB(
                                              98.h, 42.v, 57.h, 15.v))
                                    ])),
                            AppbarTitleIconbutton(
                                imagePath: ImageConstant.imgArrowLeft,
                                margin:
                                    EdgeInsets.only(top: 38.v, right: 145.h),
                                onTap: () {
                                  onTapArrowLeft(context);
                                }),
                            AppbarTitleImage(
                                imagePath: ImageConstant.imgVector9x8,
                                margin: EdgeInsets.only(
                                    left: 188.h, top: 64.v, bottom: 16.v))
                          ])),
                      Container(
                          height: 82.68.v,
                          width: 88.90001.h,
                          margin: EdgeInsets.only(left: 30.h),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Container(
                                    height: 82.68.v,
                                    width: 83.41.h,
                                    margin: EdgeInsets.only(left: 5.h),
                                    child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          AppbarTitleImage(
                                              imagePath:
                                                  ImageConstant.imgVector,
                                              margin: EdgeInsets.only(
                                                  right: 41.h, bottom: 76.v)),
                                          AppbarTitleImage(
                                              imagePath:
                                                  ImageConstant.imgVector39x57,
                                              margin: EdgeInsets.only(
                                                  left: 26.h, bottom: 43.v)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  top: 26.v,
                                                  right: 65.h),
                                              child: Column(children: [
                                                AppbarTitleImage(
                                                    imagePath: ImageConstant
                                                        .imgVector7x5,
                                                    margin: EdgeInsets.only(
                                                        left: 8.h)),
                                                SizedBox(height: 1.v),
                                                AppbarTitleImage(
                                                    imagePath: ImageConstant
                                                        .imgVector9x10,
                                                    margin: EdgeInsets.only(
                                                        right: 7.h)),
                                                SizedBox(height: 30.v),
                                                AppbarTitleImage(
                                                    imagePath: ImageConstant
                                                        .imgVector10x10,
                                                    margin: EdgeInsets.only(
                                                        left: 3.h))
                                              ])),
                                          AppbarTitleImage(
                                              imagePath:
                                                  ImageConstant.imgVector49x52,
                                              margin: EdgeInsets.fromLTRB(
                                                  20.h, 31.v, 10.h, 2.v)),
                                          AppbarTitleImage(
                                              imagePath:
                                                  ImageConstant.imgVector5,
                                              margin: EdgeInsets.fromLTRB(
                                                  33.h, 42.v, 34.h, 26.v)),
                                          AppbarTitleImage(
                                              imagePath:
                                                  ImageConstant.imgVector11x8,
                                              margin: EdgeInsets.fromLTRB(
                                                  27.h, 49.v, 48.h, 22.v)),
                                          AppbarTitleImage(
                                              imagePath:
                                                  ImageConstant.imgVector4x4,
                                              margin: EdgeInsets.fromLTRB(
                                                  36.h, 51.v, 42.h, 26.v)),
                                          AppbarTitleImage(
                                              imagePath:
                                                  ImageConstant.imgVector15x21,
                                              margin: EdgeInsets.fromLTRB(
                                                  32.h, 57.v, 42.h, 17.v))
                                        ])),
                                AppbarTitleImage(
                                    imagePath: ImageConstant.imgVector8x7,
                                    margin: EdgeInsets.only(
                                        top: 41.v, right: 80.h, bottom: 30.v))
                              ]))
                    ]),
                    SizedBox(height: 3.v),
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgVector12,
                        margin: EdgeInsets.only(left: 222.h, right: 77.h))
                  ]),
                  actions: [
                    Container(
                        height: 89.18.v,
                        width: 109.360016.h,
                        margin: EdgeInsets.only(bottom: 10.v),
                        child: Stack(alignment: Alignment.topRight, children: [
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector38x56,
                              margin:
                                  EdgeInsets.only(right: 53.h, bottom: 51.v)),
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector10x61,
                              margin: EdgeInsets.only(
                                  left: 27.h, right: 20.h, bottom: 79.v)),
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector1x3,
                              margin: EdgeInsets.only(
                                  left: 57.h, right: 49.h, bottom: 88.v)),
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector18x27,
                              margin:
                                  EdgeInsets.fromLTRB(8.h, 1.v, 73.h, 70.v)),
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector68x60,
                              margin: EdgeInsets.only(
                                  left: 49.h, top: 1.v, bottom: 20.v)),
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector1,
                              margin:
                                  EdgeInsets.fromLTRB(8.h, 9.v, 74.h, 61.v)),
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector49x45,
                              margin: EdgeInsets.only(
                                  left: 16.h, top: 40.v, right: 48.h)),
                          Padding(
                              padding:
                                  EdgeInsets.fromLTRB(30.h, 47.v, 60.h, 24.v),
                              child: Column(children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.h, right: 5.h),
                                    child: Row(children: [
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector6,
                                          margin: EdgeInsets.only(
                                              top: 1.v, bottom: 2.v)),
                                      Padding(
                                          padding: EdgeInsets.only(left: 1.h),
                                          child: Column(children: [
                                            AppbarTrailingImage(
                                                imagePath:
                                                    ImageConstant.imgVector1x1,
                                                margin: EdgeInsets.only(
                                                    left: 2.h, right: 4.h)),
                                            SizedBox(height: 3.v),
                                            Row(children: [
                                              AppbarTrailingImage(
                                                  imagePath:
                                                      ImageConstant.imgVector7),
                                              AppbarTrailingImage(
                                                  imagePath: ImageConstant
                                                      .imgVector2x2,
                                                  margin: EdgeInsets.only(
                                                      left: 4.h))
                                            ])
                                          ]))
                                    ])),
                                Padding(
                                    padding: EdgeInsets.only(right: 2.h),
                                    child: Row(children: [
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector2x1,
                                          margin: EdgeInsets.only(bottom: 1.v)),
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector9x8,
                                          margin: EdgeInsets.only(left: 5.h)),
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector2x1,
                                          margin: EdgeInsets.only(
                                              left: 4.h, top: 1.v))
                                    ])),
                                AppbarTrailingImage(
                                    imagePath: ImageConstant.imgVector1x2,
                                    margin: EdgeInsets.only(
                                        left: 2.h, right: 14.h)),
                                Padding(
                                    padding: EdgeInsets.only(left: 6.h),
                                    child: Row(children: [
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector9),
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector10,
                                          margin: EdgeInsets.only(left: 3.h)),
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector8,
                                          margin: EdgeInsets.only(left: 2.h))
                                    ])),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 1.h, right: 4.h),
                                    child: Row(children: [
                                      AppbarTrailingImage(
                                          imagePath:
                                              ImageConstant.imgVector4x4),
                                      AppbarTrailingImage(
                                          imagePath: ImageConstant.imgVector11,
                                          margin: EdgeInsets.only(
                                              left: 9.h, top: 1.v))
                                    ]))
                              ]))
                        ])),
                    Container(
                        height: 99.229996.v,
                        width: 80.25.h,
                        margin: EdgeInsets.only(left: 7.h),
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          SizedBox(
                              height: 99.229996.v,
                              width: 80.20001.h,
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 94.v),
                                            child: SizedBox(
                                                width: 80.h,
                                                child:
                                                    Divider(endIndent: 12.h)))),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector32x24,
                                        margin: EdgeInsets.only(
                                            left: 55.h, bottom: 67.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector8x15,
                                        margin: EdgeInsets.only(
                                            left: 64.h, bottom: 91.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector8x11,
                                        margin: EdgeInsets.only(
                                            top: 6.v,
                                            right: 69.h,
                                            bottom: 84.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector53x48,
                                        margin: EdgeInsets.only(
                                            left: 31.h,
                                            top: 9.v,
                                            bottom: 36.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector9x8,
                                        margin: EdgeInsets.fromLTRB(
                                            8.h, 13.v, 64.h, 76.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector15x21,
                                        margin: EdgeInsets.fromLTRB(
                                            43.h, 19.v, 15.h, 65.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector9x10,
                                        margin: EdgeInsets.fromLTRB(
                                            50.h, 25.v, 19.h, 64.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector3x3,
                                        margin: EdgeInsets.fromLTRB(
                                            47.h, 26.v, 29.h, 69.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector9x8,
                                        margin: EdgeInsets.fromLTRB(
                                            59.h, 28.v, 12.h, 63.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector9x7,
                                        margin: EdgeInsets.fromLTRB(
                                            38.h, 28.v, 35.h, 61.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector56x54,
                                        margin: EdgeInsets.only(
                                            left: 25.h,
                                            top: 30.v,
                                            bottom: 12.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector62x48,
                                        margin: EdgeInsets.only(
                                            left: 31.h, top: 37.v)),
                                    Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            45.h, 38.v, 20.h, 54.v),
                                        child: Row(children: [
                                          AppbarTrailingImage(
                                              imagePath:
                                                  ImageConstant.imgVector7x5),
                                          AppbarTrailingImage(
                                              imagePath:
                                                  ImageConstant.imgVector20x22,
                                              margin:
                                                  EdgeInsets.only(bottom: 3.v))
                                        ])),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector22x18,
                                        margin: EdgeInsets.fromLTRB(
                                            53.h, 75.v, 8.h, 1.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector9x10,
                                        margin: EdgeInsets.fromLTRB(
                                            7.h, 77.v, 62.h, 13.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector10x8,
                                        margin: EdgeInsets.only(
                                            left: 72.h,
                                            top: 81.v,
                                            bottom: 8.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector15x21,
                                        margin: EdgeInsets.fromLTRB(
                                            9.h, 84.v, 61.h, 4.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector13,
                                        margin: EdgeInsets.fromLTRB(
                                            75.h, 86.v, 1.h, 9.v)),
                                    AppbarTrailingImage(
                                        imagePath: ImageConstant.imgVector14,
                                        margin: EdgeInsets.fromLTRB(
                                            72.h, 88.v, 4.h, 7.v))
                                  ])),
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgVector8x6,
                              margin: EdgeInsets.only(
                                  top: 59.v, right: 75.h, bottom: 31.v))
                        ]))
                  ])
            ])));
  }

  /// Section Widget
  Widget _buildViaSMSButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 20.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ViasmsbuttonItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        width: 157.h,
        text: "Next",
        margin: EdgeInsets.only(left: 109.h, right: 109.h, bottom: 60.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientGreenAToGreenADecoration);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
