import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello wish',
        style: TextStyle(fontSize: AppSize.s20, color: Colors.white),
      ),
    );
  }
}
