import 'package:clubimperial/src/Routes/routes.dart';
import 'package:clubimperial/src/controllers/servicio_controller.dart';
import 'package:clubimperial/src/widgets/Cards/activity_cards.dart';
import 'package:clubimperial/src/widgets/Cards/hotel_cards.dart';
import 'package:clubimperial/src/widgets/Cards/restaurant_cards.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceScreen extends StatelessWidget {
  ServiceScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ServicioController>(
      init: ServicioController(),
      builder: (_) {
        switch (Get.arguments) {
      case 'hotel':
        _.obtenerHotel();
        _.servicios = Servicios.hotel;
        break;
      case 'restaurante':
        _.obtenerRestaurante();
        _.servicios = Servicios.restaurante;
        break;
      case 'actividad':
        _.obtenerActividad();
        _.servicios = Servicios.actividad;
        break;
    }
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                height: 240.0,
                                width: Get.width,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/banner-home.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                height: 240.0,
                                width: Get.width,
                                color: Colors.black.withOpacity(0.4),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              top: 25.0,
                              child: IconButton(
                                icon: Icon(Icons.arrow_back),
                                color: Colors.white,
                                onPressed: Get.back,
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: Get.width,
                                    margin: EdgeInsets.only(
                                      left: 20.0,
                                      right: 20.0,
                                      top: 90.0,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 0.0),
                                          child: Text(
                                            "Club Imperial",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 30.0,
                                              fontFamily: 'BebasNeue',
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 80.0,
                                          margin: EdgeInsets.only(top: 10.0),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(15.0),
                                            ),
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 10.0,
                                                color: Colors.white,
                                              ),
                                            ],
                                            border: Border.all(
                                              width: 0.5,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 10.0),
                                          child: Text(
                                            "VIAJA SIEMPRE VIAJA MÁS",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontFamily: 'BebasNeue',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Obx(
                          () => _.loading.value
                              ? Center(child: CircularProgressIndicator())
                              : builder(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget builder() {
    final ServicioController controller = Get.find<ServicioController>();
    Widget widget;
    if (controller.servicio == Servicios.hotel) {
      widget = Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "${controller.hoteles.length} hoteles encontrados",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 13,
                    fontFamily: 'Oswald',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: Get.width,
            //height: 230,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: List.generate(
                      controller.hoteles.length,
                      (index) {
                        return GestureDetector(
                          onTap: () {
                            controller.seleccinarPlace(
                              controller.hoteles[index],
                            );

                            Routes.inst.getRoute('hotel');
                          },
                          child: HotelCard(hotel: controller.hoteles[index]),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      );
    } else if (controller.servicio == Servicios.actividad) {
      widget = Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "${controller.actividades.length} actividades encontrados",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 13,
                    fontFamily: 'Oswald',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: Get.width,
            //height: 230,
            child: Container(
              child: Column(
                children: List.generate(
                  controller.actividades.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        controller.seleccinarPlace(
                          controller.actividades[index],
                        );
                        Routes.inst.getRoute('actividad');
                      },
                      child: ActivityCard(controller.actividades[index]),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      );
    } else if (controller.servicio == Servicios.restaurante) {
      widget = Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "${controller.restaurantes.length} restaurantes encontrados",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 13,
                    fontFamily: 'Oswald',
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            width: Get.width,
            //height: 230,
            child: Container(
              child: Column(
                children: List.generate(
                  controller.restaurantes.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        controller.seleccinarPlace(
                          controller.restaurantes[index],
                        );
                        Routes.inst.getRoute('restaurante');
                      },
                      child: RestaurantCard(controller.restaurantes[index]),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      widget = Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Pagina no encontrada",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 13,
                    fontFamily: 'Oswald',
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }
    return widget;
  }
}
