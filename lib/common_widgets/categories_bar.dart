import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class CategoriesBar extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final TextStyle styleText;
  final Color? borderColor;
  const CategoriesBar({
    super.key,
    required this.title,
    required this.backgroundColor,
    required this.styleText,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: AppMargin.m30,
        right: AppMargin.m16,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(AppSize.s12),
        border: Border.all(
          color: borderColor ?? ColorsManager.colorTransparent,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.p10,
        vertical: AppPadding.p12,
      ),
      child: Text(title, style: styleText),
    );
  }
}
