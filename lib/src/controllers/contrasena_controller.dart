import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/network.dart';
import 'package:clubimperial/src/models/response_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ContrasenaController extends GetxController {
  Future<ResponseModel> changePassword(String password) async {
    final Response response = await Network.instance.post(
      route: 'cambiarContrasena',
      data: {'idusuario': GetStorages.inst.idusuario, 'password': password},
    );
    ResponseModel body ;
    if (response.statusCode == 200) {
      body = ResponseModel.fromJson(response.data);
    }
    return body;
  }
}
