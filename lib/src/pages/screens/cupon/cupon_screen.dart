import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/pages/screens/cupon/cupon.dart';
import 'package:flutter/material.dart';

class CuponScreen extends StatelessWidget {
  const CuponScreen({Key key}) : super(key: key);

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
      body: DefaultTabController(
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
                  Cupon(status: true),
                  Cupon(status: false),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
