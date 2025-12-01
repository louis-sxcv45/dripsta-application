import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = "Edward";
    _usernameController.text = "@edwardter";
    _emailController.text = "edward@gmail.com";
  }

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return Scaffold(
      backgroundColor: ColorsManager.bgColorThree,
      appBar: AppBar(
        backgroundColor: ColorsManager.bgColorOne,
        leading: IconButton(
          onPressed: () {
            context.pop(context);
          },
          icon: Icon(Icons.close, color: ColorsManager.primaryTextColor),
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontSize: FontSizeManager.f18,
            fontWeight: FontWeightManager.medium,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check, color: ColorsManager.primaryColor),
          ),
        ],
      ),

      body: Container(
        margin: EdgeInsets.only(top: AppMargin.m30),
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$pathImage/image_profile.png'),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: AppMargin.m30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name',
                    style: secondaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f13,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsManager.thirdTextColor,
                        ),
                      ),
                      hintStyle: primaryTextStyle.copyWith(
                        fontSize: FontSizeManager.f16,
                        fontWeight: FontWeightManager.regular,
                      ),
                      // hintText: 'Edward Elric',
                      focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsManager.thirdTextColor,
                        ),
                      ),
                    ),
                    style: primaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f16,
                      fontWeight: FontWeightManager.regular,
                    ),
                    controller: _nameController,
                  ),

                  SizedBox(
                    height: AppSize.s24,
                  ),

                  Text(
                    'Username',
                    style: secondaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f13,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsManager.thirdTextColor,
                        ),
                      ),
                      hintStyle: primaryTextStyle.copyWith(
                        fontSize: FontSizeManager.f16,
                        fontWeight: FontWeightManager.regular,
                      ),
                      // hintText: 'Edward Elric',
                      focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsManager.thirdTextColor,
                        ),
                      ),
                    ),
                    style: primaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f16,
                      fontWeight: FontWeightManager.regular,
                    ),
                    controller: _usernameController,
                  ),

                  SizedBox(
                    height: AppSize.s24,
                  ),

                  Text(
                    'Email Address',
                    style: secondaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f13,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsManager.thirdTextColor,
                        ),
                      ),
                      hintStyle: primaryTextStyle.copyWith(
                        fontSize: FontSizeManager.f16,
                        fontWeight: FontWeightManager.regular,
                      ),
                      // hintText: 'Edward Elric',
                      focusedBorder:  UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsManager.thirdTextColor,
                        ),
                      ),
                    ),
                    style: primaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f16,
                      fontWeight: FontWeightManager.regular,
                    ),
                    controller: _emailController,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
