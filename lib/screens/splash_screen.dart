import 'dart:async';

import 'package:dripsta/style_manager/image_path.dart';
import 'package:flutter/material.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:go_router/go_router.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => context.go('/signIn'));
  }

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;
    return Scaffold(
      backgroundColor: ColorsManager.bgColorOne,
      body: Center(
        child: Container(
          width: 130,
          height: 150,
          decoration:BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                '$pathImage/image_splash.png'
              )
            )
          )
        ),
      ),
    );
  }
}