import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return Container(
      margin: EdgeInsets.only(
        left: AppMargin.m30,
        right: AppMargin.m30,
        bottom: AppMargin.m30,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s20),
            child: Image.asset(
              '$pathImage/dummy_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: AppSize.s12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Football',
                  style: secondaryTextStyle.copyWith(
                    fontSize: FontSizeManager.f12,
                    fontWeight: FontWeightManager.regular,
                  ),
                ),

                SizedBox(height: AppSize.s6),

                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle.copyWith(
                    fontSize: FontSizeManager.f16,
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),

                SizedBox(height: AppSize.s6),

                Text(
                  '\$68,47',
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
