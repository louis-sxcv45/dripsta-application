import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class FavoriteTile extends StatelessWidget {
  const FavoriteTile({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return Container(
      margin: EdgeInsets.only(top: AppSize.s20),
      padding: EdgeInsets.only(
        top: AppPadding.p10,
        bottom: AppPadding.p14,
        left: AppPadding.p12,
        right: AppPadding.p20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.s12),
        color: ColorsManager.bgColorFour,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSize.s12),
            child: Image.asset('$pathImage/dummy_shoes.png', width: 60),
          ),

          SizedBox(width: AppSize.s12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Predator 20.3 Firm Ground Boots',
                  style: primaryTextStyle.copyWith(
                    fontWeight: FontWeightManager.semiBold,
                  ),
                ),

                Text(
                  '\$68,47',
                  style: priceTextStyle.copyWith(
                    fontWeight: FontWeightManager.regular,
                  ),
                ),
              ],
            ),
          ),

          Image.asset('$pathImage/icon_wishlist_active.png', width: AppSize.s34,)
        ],
      ),
    );
  }
}
