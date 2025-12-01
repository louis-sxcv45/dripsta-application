import 'package:dripsta/common_widgets/chat_tile.dart';
import 'package:dripsta/common_widgets/empty_widget.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/font_manager.dart';
import 'package:dripsta/style_manager/font_style_manager.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget emptyChat() {
      return EmptyWidget(
        image: 'icon_headset.png',
        title: 'Opss no message yet?',
        subTitle: 'You have never done a transaction',
        width: 80,
        height: 80.5,
        onPressed: () {},
      );
    }

    Widget chatContent() {
      return Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: AppMargin.m30),
            children: [
              ChatTile(),
              ChatTile(),
              ChatTile(),
            ],
          ),
      );
    }

    return Column(
      children: [
        AppBar(
          backgroundColor: ColorsManager.bgColorOne,
          title: Text(
            'Message Support',
            style: primaryTextStyle.copyWith(
              fontSize: FontSizeManager.f18,
              fontWeight: FontWeightManager.medium,
            ),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        chatContent(),
      ],
    );
  }
}
