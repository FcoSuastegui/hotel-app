import 'package:clubimperial/src/Helpers/colores.dart';
import 'package:clubimperial/src/Models/place_model.dart';
import 'package:clubimperial/src/controllers/servicio_controller.dart';
import 'package:clubimperial/src/pages/screens/services/actividad/actividad_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ActividadScreen extends StatelessWidget {
  ActividadScreen({Key key}) : super(key: key);
  final PlaceModel hotel = Get.find<ServicioController>().place;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: ActividadTab(),
      ),
    );
  }
}
