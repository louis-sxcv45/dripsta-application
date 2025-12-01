import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const MenuProfile({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorsManager.colorTransparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppSize.s6),
        child: Container(
          margin: EdgeInsets.only(
            bottom: AppMargin.m20
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: secondaryTextStyle.copyWith(
                  fontSize: FontSizeManager.f13,
                  fontWeight: FontWeightManager.regular,
                ),
              ),
              
              Icon(
                Icons.chevron_right,
                color: ColorsManager.secondaryTextColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
