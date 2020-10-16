import 'package:clubimperial/src/views/coupon/controller/coupon_controller.dart';
import 'package:clubimperial/src/widgets/Coupons/coupons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CouponContent extends StatelessWidget {
  final bool status;
  const CouponContent({Key key, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CouponController>(
      init: CouponController(),
      builder: (controller)  {
        controller.listarCupones(status);
        return SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 15),
            width: MediaQuery.of(context).size.width,
            child: Obx(
              () => controller.loading.value
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                      children: List.generate(
                        controller.cupones.length,
                        (index) {
                          return CouponCard(
                            coupon: controller.cupones[index],
                            status: status,
                          );
                        },
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
