import 'package:clubimperial/src/Helpers/colores.dart';
import 'package:clubimperial/src/Models/place_model.dart';
import 'package:clubimperial/src/controllers/servicio_controller.dart';
import 'package:clubimperial/src/pages/screens/services/hotel/galeria_tab.dart';
import 'package:clubimperial/src/pages/screens/services/hotel/hotel_tab.dart';
import 'package:clubimperial/src/pages/screens/services/hotel/servicio_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelScreen extends StatelessWidget {
  HotelScreen({Key key}) : super(key: key);
  final PlaceModel hotel = Get.find<ServicioController>().place;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          elevation: 0.0,
          title: Text(
            hotel.name ?? '',
            style: TextStyle(
              color: Colores.primary,
              fontWeight: FontWeight.w400,
              fontSize: 18.0,
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: Get.back,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              TabBar(
                labelStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
                tabs: [
                  Tab(
                    text: "Hotel",
                  ),
                  Tab(
                    text: "Servicios",
                  ),
                  Tab(
                    text: "Galerias",
                  ),
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
                  children: [
                    HotelTab(),
                    ServicioTab(),
                    GaleriaTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
