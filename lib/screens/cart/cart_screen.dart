import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColorThree,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: ColorsManager.bgColorOne,
          leading: IconButton(
            onPressed: () {
              context.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: ColorsManager.primaryTextColor,
          ),
          centerTitle: true,
          title: Text('data'),
        ),
      ),
    );
  }
}
