import 'package:dripsta/common_widgets/form_input.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController fullNameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
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
                  'Sign Up',
                  style: primaryTextStyle.copyWith(
                    fontSize: AppSize.s24,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),
              ),
      
              SizedBox(height: AppSize.s2),
      
              Container(
                margin: EdgeInsets.only(bottom: AppMargin.m50),
                child: Text(
                  'Register and Happy Shoping',
                  style: thirdTextStyle.copyWith(
                    fontSize: AppSize.s14,
                    fontWeight: FontWeightManager.regular,
                  ),
                ),
              ),
      
              FormInput(
                controller: fullNameController,
                labelText: 'Full Name',
                hintText: 'Your Full Name',
                keyboardType: TextInputType.name,
                iconPath: '$pathImage/fullname_icon.png',
              ),
      
              SizedBox(height: AppSize.s20),
      
              FormInput(
                controller: usernameController,
                labelText: 'Username',
                hintText: 'Your Username',
                iconPath: '$pathImage/username_icon.png',
                keyboardType: TextInputType.text,
              ),
      
              SizedBox(height: AppSize.s20),
      
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
      
              Container(
                margin: EdgeInsets.only(
                  top: AppMargin.m30
                ),
                width: double.infinity,
                height: AppSize.s50,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: ColorsManager.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(AppSize.s12)
                    )
                  ),
                  onPressed: (){
                    context.go('/home');
                  }, 
                  child: Text(
                    'Sign Up',
                    style: primaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f16,
                      fontWeight: FontWeightManager.medium
                    ),
                  )
                ),
              ),
      
              Spacer(),
      
              Container(
                margin: EdgeInsets.only(bottom: AppMargin.m30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: thirdTextStyle.copyWith(
                        fontSize: AppSize.s12,
                        fontWeight: FontWeightManager.regular,
                      ),
                    ),
      
                    SizedBox(
                      width: AppSize.s4,
                    ),
      
                    GestureDetector(
                      onTap: () => context.go('/signIn'),
                      child: Text(
                        'Sign In',
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