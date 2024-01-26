import 'package:flutter/material.dart';
import 'package:mealmate/core/app_export.dart';
import 'package:mealmate/widgets/app_bar/appbar_title_iconbutton.dart';
import 'package:mealmate/widgets/app_bar/appbar_title_image.dart';
import 'package:mealmate/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mealmate/widgets/app_bar/custom_app_bar.dart';
import 'package:mealmate/widgets/custom_elevated_button.dart';
import 'package:mealmate/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class BioPageScreen extends StatefulWidget {
  BioPageScreen({Key? key}) : super(key: key);

  @override
  State<BioPageScreen> createState() => _BioPageScreenState();
}

class _BioPageScreenState extends State<BioPageScreen> {
  late final TextEditingController _firstName;

  late final TextEditingController _lastName;

  late final TextEditingController _age;

  late final TextEditingController _weight;

  late final TextEditingController _height;

  late final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _age = TextEditingController();
    _weight = TextEditingController();
    _height = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _age.dispose();
    _weight.dispose();
    _height.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              _buildStackImage(context),
                              Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 14.h, vertical: 15.v),
                                  child: Column(children: [
                                    _buildFirstNameEditText(context),
                                    SizedBox(height: 20.v),
                                    _buildLastNameEditText(context),
                                    SizedBox(height: 20.v),
                                    _buildAgeEditText(context),
                                    SizedBox(height: 20.v),
                                    _buildWeightEditText(context),
                                    SizedBox(height: 20.v),
                                    _buildHeightEditText(context),
                                    SizedBox(height: 5.v)
                                  ]))
                            ]))))),
            bottomNavigationBar: _buildNextButton(context)));
  }

  /// Section Widget
  Widget _buildStackImage(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 236.v,
            width: 350.h,
            child: Stack(alignment: Alignment.bottomRight, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(right: 133.h),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(
                            width: 216.h,
                            child: Text("Fill in your bio to get started",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineSmall!
                                    .copyWith(height: 1.31))),
                        SizedBox(height: 19.v),
                        Container(
                            width: 211.h,
                            margin: EdgeInsets.only(right: 4.h),
                            child: Text(
                                "This data will be displayed in your account profile for security",
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
                                        ])),
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
                                    child: Row(children: []))
                              ]))
                        ])),
                  ])
            ])));
  }

  /// Section Widget
  Widget _buildFirstNameEditText(BuildContext context) {
    return CustomTextFormField(controller: _firstName, hintText: "First Name");
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return CustomTextFormField(controller: _lastName, hintText: "Last Name");
  }

  /// Section Widget
  Widget _buildAgeEditText(BuildContext context) {
    return CustomTextFormField(controller: _age, hintText: "Age");
  }

  /// Section Widget
  Widget _buildWeightEditText(BuildContext context) {
    return CustomTextFormField(controller: _weight, hintText: "Weight");
  }

  /// Section Widget
  Widget _buildHeightEditText(BuildContext context) {
    return CustomTextFormField(
        controller: _height,
        hintText: "Height",
        textInputAction: TextInputAction.done);
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
