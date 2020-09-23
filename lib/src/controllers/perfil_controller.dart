import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/network.dart';
import 'package:clubimperial/src/models/perfil_model.dart';
import 'package:clubimperial/src/models/response_model.dart';
import 'package:get/get.dart';

class PerfilController extends GetxController {
  ProfileModel _perfil;
  ProfileModel get perfil => _perfil;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  @override
  void onInit() async {
    await obtenerPerfil();
    super.onInit();
  }

  Future<void> obtenerPerfil() async {
    _loading.value = true;
    final response = await Network.instance.post(
      route: 'perfil',
      data: {
        'idusuario': GetStorages.inst.idusuario,
        'sistema': GetStorages.inst.sistema
      },
    );

    if (response.statusCode == 200) {
      ResponseModel body = ResponseModel.fromJson(response.data);
      _perfil = ProfileModel.fromJson(body.data);
    }
    _loading.value = false;
  }
}
