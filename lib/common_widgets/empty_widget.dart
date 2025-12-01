import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final double width;
  final double height;
  final VoidCallback onPressed;

  const EmptyWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.width,
    required this.height,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return Expanded(
      child: Container(
        color: ColorsManager.bgColorThree,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('$pathImage/$image', width: width, height: height),

            SizedBox(height: AppSize.s20),

            Text(
              title,
              style: primaryTextStyle.copyWith(
                fontSize: FontSizeManager.f16,
                fontWeight: FontWeightManager.medium,
              ),
            ),

            SizedBox(height: AppSize.s12),

            Text(
              subTitle,
              style: secondaryTextStyle.copyWith(
                fontSize: FontSizeManager.f14,
                fontWeight: FontWeightManager.regular,
              ),
            ),

            SizedBox(height: AppSize.s20),

            Container(
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s12),
                color: ColorsManager.primaryColor,
              ),
              child: TextButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    vertical: AppPadding.p10,
                    horizontal: AppPadding.p24,
                  ),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: FontSizeManager.f16,
                    fontWeight: FontWeightManager.medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
