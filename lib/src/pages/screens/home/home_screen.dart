import 'package:clubimperial/src/controllers/home_controller.dart';
import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/widgets/Cards/ServiceCard.dart';
import 'package:clubimperial/src/widgets/Cards/VisitedCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
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
                              height: 250.0,
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
                              height: 250.0,
                              width: Get.width,
                              color: Colors.black.withOpacity(0.4),
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
                                    top: 110.0,
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
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            GestureDetector(
                                              onTap: () {},
                                              child: Container(
                                                margin: EdgeInsets.only(
                                                  top: 8,
                                                  left: 0,
                                                ),
                                                child: Row(
                                                  children: <Widget>[
                                                    Text(
                                                      "Más Hoteles",
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontFamily: 'Oswald',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: 3,
                                                      ),
                                                      child: Icon(
                                                        Icons.chevron_right,
                                                        color: Colors.white,
                                                        size: 17,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
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
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Descubre "Club Imperial"',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colores.primary,
                                fontSize: 16,
                                fontFamily: 'Oswald',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Obx(
                        () => _.loadingServices.value
                            ? Center(child: CircularProgressIndicator())
                            : Container(
                                margin:
                                    EdgeInsets.only(left: 0, right: 0, top: 10),
                                width: Get.width,
                                padding: EdgeInsets.only(left: 0),
                                height: 162,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context,
                                          int index) =>
                                      ServiceCard(service: _.services[index]),
                                  itemCount: _.services.length,
                                ),
                              ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Lo mas vendido",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: Colores.primary,
                                fontSize: 16,
                                fontFamily: 'Oswald',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Obx(
                        () => _.loadingVisitados.value
                            ? Center(child: CircularProgressIndicator())
                            : Container(
                                margin: EdgeInsets.only(top: 15),
                                width: Get.width,
                                //height: 230,
                                child: Column(
                                  children: List.generate(
                                    _.visitados.length,
                                    (index) {
                                      return VisitedCard(
                                        visited: _.visitados[index],
                                      );
                                    },
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
