import 'package:dripsta/common_widgets/chat_bubble.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    Widget productPreview() {
      return Container(
        width: 225,
        height: 74,
        margin: EdgeInsets.only(left: AppSize.s20),
        padding: EdgeInsets.all(AppPadding.p10),
        decoration: BoxDecoration(
          color: ColorsManager.bgColorFive,
          borderRadius: BorderRadius.circular(AppSize.s12),
          border: Border.all(color: ColorsManager.primaryColor),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(AppSize.s12),
              child: Image.asset('$pathImage/dummy_shoes.png', width: 54),
            ),

            SizedBox(width: AppSize.s10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'COURT VISIO...',
                    style: primaryTextStyle.copyWith(
                      fontWeight: FontWeightManager.regular,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),

                  Text(
                    '\$57,15',
                    style: priceTextStyle.copyWith(
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ],
              ),
            ),

            Image.asset('$pathImage/close_button.png', width: AppSize.s22),
          ],
        ),
      );
    }

    Widget chatContent() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p30),
        children: [
          ChatBubble(text: 'Hi, This item is still available?'),

          ChatBubble(
            text: 'Good night, This item is only available in size 42 and 43',
            isSender: false,
            hasProduct: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: ColorsManager.bgColorThree,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leading: IconButton(
            onPressed: () => context.pop(context),
            icon: Icon(Icons.arrow_back_ios),
            color: ColorsManager.primaryTextColor,
          ),
          backgroundColor: ColorsManager.bgColorOne,
          title: Row(
            children: [
              Image.asset('$pathImage/icon_shop_online.png', width: 50),
              SizedBox(width: AppSize.s12),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shoe Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f14,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),

                  Text(
                    'Online',
                    style: secondaryTextStyle.copyWith(
                      fontSize: FontSizeManager.f14,
                      fontWeight: FontWeightManager.light,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: chatContent(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productPreview(),
          Container(
            height: 50,
            margin: EdgeInsets.all(AppSize.s20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: AppSize.s16),
                    decoration: BoxDecoration(
                      color: ColorsManager.bgColorFour,
                      borderRadius: BorderRadius.circular(AppSize.s12),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message...',
                          hintStyle: thirdTextStyle.copyWith(
                            fontWeight: FontWeightManager.regular,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(width: AppSize.s20),

                Image.asset('$pathImage/icon_submit.png', width: 45),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
