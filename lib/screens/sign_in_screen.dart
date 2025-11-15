import 'package:dripsta/common_widgets/form_input.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String pathImage = ImagePath.assetPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColorOne,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: AppMargin.m30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: AppMargin.m30),
                child: Text(
                  'Login',
                  style: primaryTextStyle.copyWith(
                    fontSize: AppSize.s24,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),
              ),

              SizedBox(height: AppSize.s2),

              Container(
                margin: EdgeInsets.only(bottom: AppMargin.m70),
                child: Text(
                  'Sign In to Countinue',
                  style: thirdTextStyle.copyWith(
                    fontSize: AppSize.s14,
                    fontWeight: FontWeightManager.regular,
                  ),
                ),
              ),

              FormInput(
                controller: emailController,
                labelText: 'Email Address',
                hintText: 'Your Email Address',
                keyboardType: TextInputType.emailAddress,
                iconPath: '$pathImage/email_icon.png',
              ),

              SizedBox(height: AppSize.s20),

              FormInput(
                controller: passwordController,
                labelText: 'Password',
                hintText: 'Your Password',
                iconPath: '$pathImage/password_icon.png',
                isPassword: true,
                keyboardType: TextInputType.visiblePassword,
              ),

              Spacer(),

              Container(
                margin: EdgeInsets.only(bottom: AppMargin.m30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: thirdTextStyle.copyWith(
                        fontSize: AppSize.s12,
                        fontWeight: FontWeightManager.regular,
                      ),
                    ),

                    SizedBox(
                      width: AppSize.s4,
                    ),

                    GestureDetector(
                      onTap: () => context.go('/signUp'),
                      child: Text(
                        'Sign Up',
                        style: primaryColor.copyWith(
                          fontSize: AppSize.s12,
                          fontWeight: FontWeightManager.medium
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
