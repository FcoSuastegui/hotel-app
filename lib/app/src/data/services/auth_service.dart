import 'package:clubimperial/app/src/data/models/response_model.dart';
import 'package:clubimperial/app/src/helpers/network.dart';
import 'package:dio/dio.dart';

class AuthService {
  Future<ResponseModel> login(Map<String, dynamic> data) async {
    final ResponseModel respuesta = ResponseModel(
      status: false,
      message: '',
    );

    try {
      final Response response = await Network.instance.post(
        route: 'login',
        data: data,
      );
      if (response.statusCode == 200) {
        final ResponseModel body = ResponseModel.fromJson(response.data);
        if (body.status) {
          respuesta.status = body.status;
          respuesta.data = body.data;
        } else {
          respuesta.message = body.message;
        }
      }
    } on DioError catch (e) {
      respuesta.message = e.error.toString();
    }
    return respuesta;
  }

  Future<ResponseModel> changePassWord(Map<String, dynamic> data) async {
    final ResponseModel respuesta = ResponseModel(
      status: false,
      message: '',
    );
    try {
      final Response response = await Network.instance.post(
        route: 'cambiarContrasena',
        data: data,
      );
      if (response.statusCode == 200) {
        ResponseModel body = ResponseModel.fromJson(response.data);
        respuesta.status = body.status;
        respuesta.message = body.message;
      }
    } on DioError catch (e) {
      respuesta.message = e.error.toString();
    }

    return respuesta;
  }

  Future<ResponseModel> profile(Map<String, dynamic> data) async {
    final ResponseModel respuesta = ResponseModel(
      status: false,
      message: '',
    );

    try {
      final response = await Network.instance.post(
        route: 'perfil',
        data: data,
      );
      if (response.statusCode == 200) {
        ResponseModel body = ResponseModel.fromJson(response.data);
        if (body.status) {
          respuesta.status = body.status;
          respuesta.data = body.data;
        } else {
          respuesta.message = body.message;
        }
      }
    } on DioError catch (e) {
      respuesta.message = e.error.toString();
    }

    return respuesta;
  }
}
