import 'package:clubimperial/src/controllers/cupon_controller.dart';
import 'package:clubimperial/src/widgets/Coupons/coupons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cupon extends StatelessWidget {
  final bool status;
  const Cupon({Key key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CuponController>(
      init: CuponController(),
      builder: (_) {
        _.listarCupones(status);
        return Obx(
          () => _.loading.value
              ? Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width,
                    //height: 230,
                    child: Container(
                      child: Column(
                        children: List.generate(
                          _.cupones.length,
                          (index) {
                            return CouponCard(
                              coupon: _.cupones[index],
                              status: status,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }
}
