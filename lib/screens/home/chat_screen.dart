import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Chat',
        style: TextStyle(fontSize: AppSize.s20, color: Colors.white),
      ),
    );
  }
}
