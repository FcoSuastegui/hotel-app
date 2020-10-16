import 'package:clubimperial/src/data/models/perfil_model.dart';
import 'package:clubimperial/src/data/models/response_model.dart';
import 'package:clubimperial/src/data/services/auth_service.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  ProfileModel _perfil;
  ProfileModel get perfil => _perfil;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  @override
  void onInit() async {
    await getProfile();
    super.onInit();
  }

  Future<void> getProfile() async {
    _loading(true);
    final ResponseModel response = await AuthService().profile(
      {
        'idusuario': GetStorages.inst.idusuario,
        'sistema': GetStorages.inst.sistema
      },
    );

    response.status
        ? _perfil = ProfileModel.fromJson(response.data)
        : Get.snackbar(
            'Club Imperial',
            response.message,
            backgroundColor: Colors.red,
            colorText: Colors.white,
          );
    _loading(false);
  }
}
