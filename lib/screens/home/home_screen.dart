import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return ListView(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: AppMargin.m30,
            right: AppMargin.m30,
            left: AppMargin.m30,
          ),
          child: Row(
            children: [
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
                      style: secondaryTextStyle.copyWith(
                        fontSize: FontSizeManager.f16,
                        fontWeight: FontWeightManager.regular,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('$pathImage/image_profile.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
