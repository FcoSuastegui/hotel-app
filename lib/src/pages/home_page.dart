import 'package:clubimperial/src/controllers/bottom_navigation_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  static final String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationHomeController>(
      init: BottomNavigationHomeController(),
      builder: (_) => Obx(
        () => Scaffold(
          body: _.pageOptions(_.currentIndex.value),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _.currentIndex.value,
            items: _.items,
            onTap: _.selectCurrentIndex,
          ),
        ),
      ),
    );
  }
}
