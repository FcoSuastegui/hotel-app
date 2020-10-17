
import 'package:clubimperial/app/src/data/models/response_model.dart';
import 'package:clubimperial/app/src/helpers/network.dart';
import 'package:dio/dio.dart';

class CouponService {
  Future<ResponseModel> getData(Map<String, dynamic> data) async {
    final ResponseModel respuesta = ResponseModel(
      status: false,
    );
    try {
      final response = await Network.instance.post(
        route: 'cupones',
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