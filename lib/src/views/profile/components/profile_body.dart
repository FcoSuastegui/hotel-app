import 'package:clubimperial/src/views/profile/components/profile_avatar_card.dart';
import 'package:clubimperial/src/views/profile/components/profile_card.dart';
import 'package:clubimperial/src/views/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileBody extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProfileAvatarCard(),
          Obx(
            () => controller.loading.value
                ? Center(child: CircularProgressIndicator())
                : ProfileCard(),
          )
        ],
      ),
    );
  }
}
