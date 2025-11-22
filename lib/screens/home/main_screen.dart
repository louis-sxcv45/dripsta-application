import 'package:dripsta/controller/main_screen_controller.dart';
import 'package:dripsta/style_manager/colors_manager.dart';
import 'package:dripsta/style_manager/image_path.dart';
import 'package:dripsta/style_manager/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class MainScreen extends StatelessWidget {
  final Widget child;
  const MainScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    String pathImage = ImagePath.assetPath;
    final MainScreenController mc = Get.put(MainScreenController());

    return Obx(
      () => Scaffold(
        body: child,
        backgroundColor: ColorsManager.bgColorOne,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(AppSize.s28),
          ),
          child: BottomAppBar(
            color: ColorsManager.bgColorFour,
            shape: CircularNotchedRectangle(),
            notchMargin: AppMargin.m12,
            clipBehavior: Clip.antiAlias,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    mc.changeIndex(0);
                    context.go('/home');
                    // ignore: unrelated_type_equality_checks
                  },
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: AppMargin.m12
                    ),
                    child: Image.asset(
                      '$pathImage/icon_home.png',
                      width: AppSize.s21,
                      // ignore: unrelated_type_equality_checks
                      color: mc.currentIndex == 0
                          ? ColorsManager.primaryColor
                          : null,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    mc.changeIndex(1);
                    context.go('/chat');
                  },
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: AppMargin.m12
                    ),
                    child: Image.asset(
                      '$pathImage/icon_chat.png',
                      width: AppSize.s20,
                      // ignore: unrelated_type_equality_checks
                      color: mc.currentIndex == 1
                          ? ColorsManager.primaryColor
                          : null,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    mc.changeIndex(2);
                    context.go('/wishlist');
                  },
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: AppMargin.m12
                    ),
                    child: Image.asset(
                      '$pathImage/icon_wishlist.png',
                      width: AppSize.s20,
                      // ignore: unrelated_type_equality_checks
                      color: mc.currentIndex == 2
                          ? ColorsManager.primaryColor
                          : null,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    mc.changeIndex(3);
                    context.go('/profile');
                  },
                  icon: Container(
                    margin: EdgeInsets.only(
                      top: AppMargin.m12
                    ),
                    child: Image.asset(
                      '$pathImage/icon_profile.png',
                      width: AppSize.s18,
                      color: mc.currentIndex == 3
                          ? ColorsManager.primaryColor
                          : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ColorsManager.secondaryColor,
          shape: CircleBorder(),

          onPressed: () {},
          child: Image.asset('$pathImage/icon_cart.png', width: AppSize.s20),
        ),
      ),
    );
  }
}
