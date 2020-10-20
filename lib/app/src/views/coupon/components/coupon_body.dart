import 'package:clubimperial/app/src/helpers/colores.dart';
import 'package:clubimperial/app/src/views/coupon/components/coupon_content.dart';
import 'package:flutter/material.dart';

class CouponBody extends StatelessWidget {
  const CouponBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: <Widget>[
          TabBar(
            labelStyle: TextStyle(
              fontFamily: 'Oswald',
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
            tabs: [
              Tab(text: "Disponibles"),
              Tab(text: "Usados"),
            ],
            indicatorColor: Colores.primary,
            unselectedLabelColor: Colors.black87,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16.0,
            ),
            labelColor: Colores.primary,
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: TabBarView(
              children: <Widget>[
                CouponContent(status: true),
                CouponContent(status: false),
              ],
            ),
          )
        ],
      ),
    );
  }
}
