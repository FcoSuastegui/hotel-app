import 'package:clubimperial/app/src/data/models/response_model.dart';
import 'package:clubimperial/app/src/helpers/network.dart';
import 'package:dio/dio.dart';

class TokenService {
  Future<ResponseModel> sendToken(
    String device,
    String token,
    int idusuario,
  ) async {
    final ResponseModel respuesta = ResponseModel(
      status: false,
      message: '',
    );

    try {
      final Response response = await Network.instance.post(
        route: 'updateToken',
        data: {"token": token, "device": device, "idusuario": idusuario},
      );
      if (response.statusCode == 200) {
        final ResponseModel body = ResponseModel.fromJson(response.data);
        respuesta.status = body.status;
      }
    } on DioError catch (e) {
      respuesta.message = e.error.toString();
    }
    return respuesta;
  }
}
