import 'package:dripsta/common_widgets/menu_profile.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return Column(
      children: [
        AppBar(
          backgroundColor: ColorsManager.bgColorOne,
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.all(AppPadding.p30),
              child: Row(
                children: [
                  Image.asset('$pathImage/image_profile.png', width: 64),

                  SizedBox(width: AppSize.s16),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, Edward',
                          style: primaryTextStyle.copyWith(
                            fontSize: FontSizeManager.f24,
                            fontWeight: FontWeightManager.semiBold,
                          ),
                        ),

                        Text(
                          '@edwardter',
                          style: thirdTextStyle.copyWith(
                            fontSize: FontSizeManager.f16,
                            fontWeight: FontWeightManager.regular,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Image.asset('$pathImage/icon_exit_button.png', width: 20),
                ],
              ),
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppSize.s20,
              ),

              Text(
                'Account',
                style: primaryTextStyle.copyWith(
                  fontSize: FontSizeManager.f16,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),

              SizedBox(
                height: AppSize.s16,
              ),

              MenuProfile(title: 'Edit Profile', onTap: (){
                context.push('/profile/edit-profile');
              }),
              MenuProfile(title: 'Your Orders', onTap: (){}),
              MenuProfile(title: 'Help', onTap: (){}),

              SizedBox(
                height: AppSize.s30,
              ),

              Text(
                'General',
                style: primaryTextStyle.copyWith(
                  fontSize: FontSizeManager.f16,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),

              SizedBox(
                height: AppSize.s16,
              ),

              MenuProfile(title: 'Privacy & Policy', onTap: (){}),
              MenuProfile(title: 'Term of Service', onTap: (){}),
              MenuProfile(title: 'Rate App', onTap: (){}),
            ],
          ),
        ),
      ],
    );
  }
}
