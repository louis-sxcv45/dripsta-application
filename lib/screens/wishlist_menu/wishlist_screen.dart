import 'package:dripsta/common_widgets/empty_widget.dart';
import 'package:dripsta/common_widgets/favorite_tile.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget emptyWishList() {
      return EmptyWidget(
        image: 'icon_wishlist_empty.png',
        title: 'You don\'t have dream shoes?',
        subTitle: 'Let\'s find your favorite shoes',
        width: 74,
        height: 62,
        onPressed: () {},
      );
    }

    return Column(
      children: [
        AppBar(
          backgroundColor: ColorsManager.bgColorOne,
          title: Text(
            'Favorite Shoes',
            style: primaryTextStyle.copyWith(
              fontSize: FontSizeManager.f18,
              fontWeight: FontWeightManager.regular,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),

        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: AppSize.s30),
            children: [FavoriteTile(), FavoriteTile(), FavoriteTile()],
          ),
        ),
      ],
    );
  }
}
