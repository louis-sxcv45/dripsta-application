import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class WhistlistScreen extends StatelessWidget {
  const WhistlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColorOne,
      body: Center(
        child: Text('Hello Profile', style: TextStyle(
          fontSize: AppSize.s20,
          color: Colors.white
        ),),
      ),
    );
  }
}