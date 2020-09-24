import 'package:clubimperial/src/Helpers/get_storages.dart';
import 'package:clubimperial/src/Helpers/network.dart';
import 'package:clubimperial/src/Models/place_model.dart';
import 'package:clubimperial/src/Models/response_model.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

enum Servicios { hotel, restaurante, actividad }

class ServicioController extends GetxController {
  List<PlaceModel> _hoteles = List<PlaceModel>();
  List<PlaceModel> get hoteles => _hoteles;

  List<PlaceModel> _restaurantes = List<PlaceModel>();
  List<PlaceModel> get restaurantes => _restaurantes;

  List<PlaceModel> _actividades = List<PlaceModel>();
  List<PlaceModel> get actividades => _actividades;

  Servicios servicios;
  Servicios get servicio => servicios;

  PlaceModel _place;
  PlaceModel get place => _place;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  void seleccinarPlace( PlaceModel place ) => _place = place;
   

  Future<void> obtenerHotel() async {
    try {
      _loading.value = true;
      final response = await Network.instance.post(route: 'hoteles', data: {
        'sistema': GetStorages.inst.sistema,
        'tipo': 'Banner',
      });

      if (response.statusCode == 200) {
        ResponseModel body = ResponseModel.fromJson(response.data);
        _hoteles = [];
        body.data.forEach((item) {
          _hoteles.add(PlaceModel.fromJson(item));
        });
      }
      _loading.value = false;
    } on DioError catch (e) {
      print(e);
      _loading.value = false;
    }
  }

  Future<void> obtenerRestaurante() async {
    try {
      _loading.value = true;
      final response = await Network.instance.post(route: 'restaurant', data: {
        'sistema': GetStorages.inst.sistema,
        'tipo': 'Banner',
      });

      if (response.statusCode == 200) {
        ResponseModel body = ResponseModel.fromJson(response.data);
        _restaurantes = [];
        body.data.forEach((item) {
          _restaurantes.add(PlaceModel.fromJson(item));
        });
      }
      _loading.value = false;
    } on DioError catch (e) {
      _loading.value = false;
      print(e);
    }
  }

  Future<void> obtenerActividad() async {
    try {
      _loading.value = true;
      final response = await Network.instance.post(route: 'activities', data: {
        'sistema': GetStorages.inst.sistema,
        'tipo': 'Banner',
      });

      if (response.statusCode == 200) {
        ResponseModel body = ResponseModel.fromJson(response.data);
        _actividades = [];
        body.data.forEach((item) {
          _actividades.add(PlaceModel.fromJson(item));
        });
      }
      _loading.value = false;
    } on DioError catch (e) {
      print(e);
      _loading.value = false;
    }
  }
}
