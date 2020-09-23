import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarCustom extends AppBar {
  final String appBarTitle;
  final IconData leadingIcon;

  AppBarCustom({@required this.appBarTitle, this.leadingIcon})
      : super(
          centerTitle: false,
          automaticallyImplyLeading: true,
          title: Text(
            appBarTitle,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontFamily: 'Oswald'),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: leadingIcon != null
              ? IconButton(
                  icon: Icon(
                    leadingIcon,
                    color: Colors.black,
                    size: 20.0,
                  ),
                  onPressed: () => Get.back(),
                )
              : leadingIcon,
        );
}
