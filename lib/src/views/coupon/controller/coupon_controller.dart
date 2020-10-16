import 'package:clubimperial/src/data/models/cupon_model.dart';
import 'package:clubimperial/src/data/services/coupon_service.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:get/get.dart';

class CouponController extends GetxController {
  List<CouponsModel> _cupones = List<CouponsModel>().obs;
  List<CouponsModel> get cupones => _cupones;

  RxBool _loading = false.obs;
  RxBool get loading => _loading;

  Future<void> listarCupones(bool status) async {
    String _status = status ? 'Activo' : 'Usado';
    _loading.value = true;
    final response = await CouponService().getData({
      'idsocio': GetStorages.inst.idsocio,
      'status': _status,
    });
    _cupones.clear();
    if (response.status) {
      response.data.forEach((item) {
        _cupones.add(CouponsModel.fromJson(item));
      });
    }
    _loading.value = false;
  }
}
