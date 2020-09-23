import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/network.dart';
import 'package:clubimperial/src/models/cupon_model.dart';
import 'package:clubimperial/src/models/response_model.dart';
import 'package:get/get.dart';

class CuponController extends GetxController {
  List<CouponsModel> _cupones = List<CouponsModel>().obs;
  List<CouponsModel> get cupones => _cupones;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  Future<void> listarCupones( bool status) async {
    String _status = status ? 'Activo' : 'Usado';
    _loading.value = true;
    final response = await Network.instance.post(
        route: 'cupones',
        data: {'idsocio': GetStorages.inst.idsocio, 'status': _status});
    if (response.statusCode == 200) {
      ResponseModel body = ResponseModel.fromJson(response.data);
      _cupones.clear();
      body.data.forEach((item) {
        _cupones.add(CouponsModel.fromJson(item));
      });
    }
    _loading.value = false;
  }
}
