import 'package:dripsta/common_widgets/categories_bar.dart';
import 'package:dripsta/common_widgets/product_tile.dart';
import 'package:dripsta/common_widgets/product_card.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
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

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: AppSize.s30),

              CategoriesBar(
                title: 'All Shoes',
                backgroundColor: ColorsManager.primaryColor,
                styleText: primaryTextStyle.copyWith(
                  fontSize: FontSizeManager.f13,
                  fontWeight: FontWeightManager.medium,
                ),
              ),

              CategoriesBar(
                title: 'Running',
                backgroundColor: ColorsManager.colorTransparent,
                borderColor: ColorsManager.borderColor,
                styleText: thirdTextStyle.copyWith(
                  fontSize: FontSizeManager.f13,
                  fontWeight: FontWeightManager.light,
                ),
              ),
              CategoriesBar(
                title: 'Training',
                backgroundColor: ColorsManager.colorTransparent,
                borderColor: ColorsManager.borderColor,
                styleText: thirdTextStyle.copyWith(
                  fontSize: FontSizeManager.f13,
                  fontWeight: FontWeightManager.light,
                ),
              ),

              CategoriesBar(
                title: 'Basketball',
                backgroundColor: ColorsManager.colorTransparent,
                borderColor: ColorsManager.borderColor,
                styleText: thirdTextStyle.copyWith(
                  fontSize: FontSizeManager.f13,
                  fontWeight: FontWeightManager.light,
                ),
              ),

              CategoriesBar(
                title: 'Hiking',
                backgroundColor: ColorsManager.colorTransparent,
                borderColor: ColorsManager.borderColor,
                styleText: thirdTextStyle.copyWith(
                  fontSize: FontSizeManager.f13,
                  fontWeight: FontWeightManager.light,
                ),
              ),
            ],
          ),
        ),

        Container(
          margin: EdgeInsets.only(
            top: AppMargin.m30, 
            left: AppMargin.m30
          ),
          child: Text(
            'Popular Products',
            style: primaryTextStyle.copyWith(
              fontSize: FontSizeManager.f22,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(
            top: AppMargin.m14
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ProductCard(),
                ProductCard(),
                ProductCard(),
                SizedBox(width: AppSize.s30,),
              ],
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(
            top: AppMargin.m30, 
            left: AppMargin.m30,
          ),
          child: Text(
            'New Arrivals',
            style: primaryTextStyle.copyWith(
              fontSize: FontSizeManager.f22,
              fontWeight: FontWeightManager.semiBold,
            ),
          ),
        ),

        Container(
          margin: EdgeInsets.only(
            top: AppMargin.m14
          ),
          child: Column(
            children: [
              ProductTile(),
              ProductTile(),
              ProductTile(),
            ],
          ),
        ),
      ],
    );
  }
}
