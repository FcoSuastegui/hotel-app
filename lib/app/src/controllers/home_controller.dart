import 'package:clubimperial/app/src/Models/place_model.dart';
import 'package:clubimperial/app/src/models/hotels_model.dart';
import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:clubimperial/app/src/helpers/network.dart';
import 'package:clubimperial/app/src/models/response_model.dart';
import 'package:clubimperial/app/src/models/service_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<HotelsModel> _hoteles = List<HotelsModel>().obs;
  RxList<HotelsModel> get hoteles => _hoteles;

  RxBool _loadingHoteles = false.obs;
  RxBool get loadingHoteles => _loadingHoteles;

  Future<void> getHotels() async {
    _loadingHoteles.value = true;
    final response = await Network.instance.post(
      route: 'app/hoteles',
      data: {'sistema': GetStorages.inst.sistema, 'tipo': 'Banner'},
    );
    if (response.statusCode == 200) {
      ResponseModel body = ResponseModel.fromJson(response.data);
      _hoteles.clear();
      body.data.forEach((item) {
        _hoteles.add(HotelsModel.fromJson(item));
      });
    }
    _loadingHoteles.value = false;
  }

  @override
  void onInit() async {
    await getServices();
    await getVisitados();
    super.onInit();
  }

  // Servicios

  RxList<ServiceModel> _services = List<ServiceModel>().obs;
  RxList<ServiceModel> get services => _services;

  RxBool _loadingServices = false.obs;
  RxBool get loadingServices => _loadingServices;

  Future<void> getServices() async {
    _loadingServices.value = true;
    final response = await Network.instance.post(
      route: 'services',
      data: {'sistema': GetStorages.inst.sistema, 'tipo': 'Banner'},
    );
    if (response.statusCode == 200) {
      ResponseModel body = ResponseModel.fromJson(response.data);
      _services.clear();
      body.data.forEach((item) {
        _services.add(ServiceModel.fromJson(item));
      });
    }
    _loadingServices.value = false;
  }

  // Visitados
  RxList<PlaceModel> _visitados = List<PlaceModel>().obs;
  RxList<PlaceModel> get visitados => _visitados;

  RxBool _loadingVisitados = false.obs;
  RxBool get loadingVisitados => _loadingVisitados;

  Future<void> getVisitados() async {
    _loadingVisitados.value = true;
    final response = await Network.instance.post(
      route: 'mostvisited',
      data: {'sistema': GetStorages.inst.sistema, 'tipo': 'Banner'},
    );
    if (response.statusCode == 200) {
      ResponseModel body = ResponseModel.fromJson(response.data);
      _visitados.clear();
      body.data.forEach((item) {
        _visitados.add(PlaceModel.fromJson(item));
      });
    }
    _loadingVisitados.value = false;
  }
}
