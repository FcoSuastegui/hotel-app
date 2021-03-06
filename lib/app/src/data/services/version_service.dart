import 'package:clubimperial/app/src/data/models/response_model.dart';
import 'package:clubimperial/app/src/helpers/network.dart';
import 'package:dio/dio.dart';

class VersionService {
  Future<ResponseModel> checkVersion() async {
    final ResponseModel respuesta = ResponseModel(
      status: false,
    );

    try {
      final Response response = await Network.instance.post(
        route: 'version',
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
}
