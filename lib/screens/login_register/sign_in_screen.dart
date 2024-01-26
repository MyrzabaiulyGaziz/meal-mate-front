import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:mealmate/core/app_export.dart';
import 'package:mealmate/widgets/custom_elevated_button.dart';
import 'package:mealmate/widgets/custom_outlined_button.dart';
import 'package:mealmate/widgets/custom_text_form_field.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 38.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 12.v),
                    CustomImageView(
                      imagePath: ImageConstant.img399844149441,
                      height: 233.adaptSize,
                      width: 233.adaptSize,
                      radius: BorderRadius.circular(
                        89.h,
                      ),
                    ),
                    SizedBox(height: 27.v),
                    Text(
                      "Login To Your Account",
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 40.v),
                    _buildEmailField(context),
                    SizedBox(height: 12.v),
                    _buildPasswordField(context),
                    SizedBox(height: 21.v),
                    Text(
                      "Or Continue With",
                      style: CustomTextStyles.labelLargeBlack90001,
                    ),
                    SizedBox(height: 10.v),
                    _buildFacebook(context),
                    SizedBox(height: 10.v),
                    Text(
                      "Forgot Your Password?",
                      style: CustomTextStyles
                          .labelLargeAbhayaLibreMediumGreenA200
                          .copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildLoginButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
      controller: _email,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
      controller: _password,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildFacebookButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Facebook",
        margin: EdgeInsets.only(right: 10.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildGoogleButton(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "Google",
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 12.h),
          child: CustomImageView(
            height: 25.v,
            width: 24.h,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFacebook(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFacebookButton(context),
        _buildGoogleButton(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(
          AppRoutes.mainMenu,
          (_) => false,
        );
      },
      width: 141.h,
      text: "Login",
      margin: EdgeInsets.only(
        left: 117.h,
        right: 117.h,
        bottom: 60.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientGreenAToGreenADecoration,
    );
  }
}
