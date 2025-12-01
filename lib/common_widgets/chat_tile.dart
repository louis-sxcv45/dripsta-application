import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;

    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s12),
      onTap: (){
        context.push('/chat/detail-chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: AppSize.s33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('$pathImage/image_shop_logo.png', width: 54),
      
                SizedBox(width: AppSize.s12),
      
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shoe Store',
                        style: primaryTextStyle.copyWith(
                          fontSize: FontSizeManager.f15,
                          fontWeight: FontWeightManager.regular,
                        ),
                      ),
                  
                      Text(
                        'Good night, This item is on...',
                        style: secondaryTextStyle.copyWith(
                          fontWeight: FontWeightManager.light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
      
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: FontSizeManager.f10,
                    fontWeight: FontWeightManager.regular,
                  ),
                ),
              ],
            ),
      
            SizedBox(
              height: AppSize.s12,
            ),
      
            Divider(
              thickness: 2,
              color: ColorsManager.bgColorTwo,
              radius: BorderRadius.circular(AppSize.s2),
            )
          ],
        ),
      ),
    );
  }
}
