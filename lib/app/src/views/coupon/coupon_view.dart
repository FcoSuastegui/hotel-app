import 'package:clubimperial/app/src/helpers/colores.dart';
import 'package:clubimperial/app/src/views/coupon/components/coupon_body.dart';
import 'package:flutter/material.dart';

class CouponView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0.0,
        title: Text(
          'Mis cupones',
          style: TextStyle(
            color: Colores.primary,
            fontWeight: FontWeight.w400,
            fontSize: 18.0,
          ),
        ),
      ),
      body: CouponBody(),
    );
  }
}
