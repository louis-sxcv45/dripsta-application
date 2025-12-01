import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;
  const ChatBubble({
    super.key,
    this.text = '',
    this.isSender = true,
    this.hasProduct = true,
  });

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    Widget productItem() {
      return Container(
        width: 231,
        margin: EdgeInsets.only(bottom: AppMargin.m12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: isSender ? Radius.circular(AppSize.s12) : Radius.zero,
            topRight: isSender ? Radius.zero : Radius.circular(AppSize.s12),
            bottomLeft: Radius.circular(AppSize.s12),
            bottomRight: Radius.circular(AppSize.s12),
          ),
          color: isSender
              ? ColorsManager.bgColorFive
              : ColorsManager.bgColorFour,
        ),
        padding: EdgeInsets.all(AppPadding.p12),
        child: Column(
          
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSize.s12),
                  child: Image.asset('$pathImage/dummy_shoes.png', width: 70),
                ),

                SizedBox(width: AppSize.s8),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'COURT VISION 2.0 SHOES',
                        style: primaryTextStyle.copyWith(
                          fontWeight: FontWeightManager.regular,
                        ),
                      ),

                      SizedBox(height: AppSize.s4),

                      Text(
                        '\$57,15',
                        style: priceTextStyle.copyWith(
                          fontWeight: FontWeightManager.regular,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: AppSize.s20),

            Row(
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s8),
                    ),
                    side: BorderSide(color: ColorsManager.primaryColor),
                    padding: EdgeInsets.symmetric(
                      vertical: AppPadding.p10,
                      horizontal: AppPadding.p14,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add to Cart',
                    style: primaryColor.copyWith(
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ),

                SizedBox(width: AppSize.s8),

                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSize.s8)
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppPadding.p14,
                      vertical: AppPadding.p10,
                    ),
                    backgroundColor: ColorsManager.primaryColor,
                  ),
                  child: Text(
                    'Buy Now',
                    style: bgTextColorFive.copyWith(
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: AppMargin.m30),
      child: Column(
        crossAxisAlignment: hasProduct ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productItem() : SizedBox(),
          Row(
            mainAxisAlignment: isSender
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppPadding.p16,
                    vertical: AppPadding.p12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: isSender
                          ? Radius.circular(AppSize.s12)
                          : Radius.zero,
                      topRight: isSender
                          ? Radius.zero
                          : Radius.circular(AppSize.s12),
                      bottomLeft: Radius.circular(AppSize.s12),
                      bottomRight: Radius.circular(AppSize.s12),
                    ),
                    color: isSender
                        ? ColorsManager.bgColorFive
                        : ColorsManager.bgColorFour,
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle.copyWith(
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
