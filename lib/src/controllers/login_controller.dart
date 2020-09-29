import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/network.dart';
import 'package:clubimperial/src/models/response_model.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  Future<Map<String, dynamic>> login(Map<String, dynamic> datos) async {
    Map<String, dynamic> respuesta = {'status': false, 'message': ''};
    try {
      final Response response = await Network.instance.post(
        route: 'login',
        data: datos,
      );

      if (response.statusCode == 200) {
        final ResponseModel body = ResponseModel.fromJson(response.data);
        if (body.status) {
          GetStorages.inst.token = body.data['token'];
          GetStorages.inst.idusuario = body.data['idUsuario'];
          GetStorages.inst.sistema = body.data['sistema'];
          GetStorages.inst.idsocio = body.data['idsocio'];
          GetStorages.inst.nombre = body.data['nombre'];
          GetStorages.inst.email = body.data['email'];
          GetStorages.inst.avatar = body.data['avatar'];
          GetStorages.inst.page = '/home';
          respuesta['status'] = body.status;
        } else {
          respuesta['message'] = body.message;
        }
      }
    } on DioError catch (e) {
      print(e);
      respuesta['message'] = 'Hubo un error con el servidor..';
    }

    return respuesta;
  }
}
