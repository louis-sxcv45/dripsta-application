import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(left: AppMargin.m30),
      decoration: BoxDecoration(
        color: ColorsManager.bgCard,
        borderRadius: BorderRadius.circular(AppSize.s20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSize.s30),

          Image.asset(
            '$pathImage/dummy_shoes.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: AppMargin.m20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hiking',
                  style: secondaryTextStyle.copyWith(
                    fontSize: FontSizeManager.f12,
                    fontWeight: FontWeightManager.regular,
                  ),
                ),

                SizedBox(height: AppSize.s6),

                Text(
                  'COURT VISION 2.0',
                  style: titleTextColor.copyWith(
                    fontSize: FontSizeManager.f18,
                    fontWeight: FontWeightManager.semiBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                SizedBox(height: AppSize.s6),

                Text(
                  '\$58,67',
                  style: priceTextStyle.copyWith(
                    fontWeight: FontWeightManager.medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
