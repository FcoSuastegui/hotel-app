import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/pages/screens/cupon/cupon.dart';
import 'package:flutter/material.dart';

class CuponScreen extends StatelessWidget {
  const CuponScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text("Mis cupones"),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: <Widget>[
            Container(
              child: Material(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(0.0),
                  margin: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    top: 10.0,
                    bottom: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colores.back,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Colors.black.withOpacity(.2),
                        //offset: Offset(6.0, 7.0),
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: TabBar(
                    labelStyle: TextStyle(
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    tabs: [
                      Tab(text: "Disponibles"),
                      Tab(text: "Usados"),
                    ],
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.black45,
                    unselectedLabelStyle: TextStyle(
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w300,
                        fontSize: 14),
                    labelColor: Colores.primary,
                  ),
                ),
              ),
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
