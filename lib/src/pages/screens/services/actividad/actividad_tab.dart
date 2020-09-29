import 'package:clubimperial/src/Helpers/colores.dart';
import 'package:clubimperial/src/Helpers/get_storages.dart';
import 'package:clubimperial/src/Models/place_model.dart';
import 'package:clubimperial/src/controllers/servicio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ActividadTab extends StatelessWidget {
  ActividadTab({Key key}) : super(key: key);
  final PlaceModel actividad = Get.find<ServicioController>().place;
  final formatCurrency = new NumberFormat.simpleCurrency();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 0, left: 20, right: 20),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "${GetStorages.inst.server}/${actividad.image}",
                        ),
                        fit: BoxFit.contain,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 20, right: 5, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin:
                                  EdgeInsets.only(top: 5, left: 0, bottom: 0),
                              child: Text(
                                "${actividad.name}",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(top: 2, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(top: 0, left: 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "${actividad.place}",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontSize: 14,
                                                    fontFamily: 'Oswald',
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                    top: 20, left: 0, right: 15),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Colors.black38,
                                        //offset: Offset(6.0, 7.0),
                                      ),
                                    ],
                                    border: Border.all(
                                        width: 0.15, color: Colors.black38))),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "Descripción",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 14,
                                    fontFamily: 'Oswald',
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 15),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Text(
                                    actividad.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 13,
                                      fontFamily: "Oswald",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20.0, left: 0.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 0),
                                          child: Icon(
                                            Icons.new_releases,
                                            color: Colores.primary,
                                            size: 25.0,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 10.0),
                                          child: Text(
                                            "Precio regular",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15.0,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //Container(),
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          " ${formatCurrency.format(actividad.price)}",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.black45,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20.0, left: 0.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        /* Container(
                                          margin: EdgeInsets.only(top: 0),
                                          child: Icon(
                                            Icons.new_releases,
                                            color: Colores.primary,
                                            size: 25.0,
                                          ),
                                        ), */
                                        Container(
                                          margin: EdgeInsets.only(left: 35.0),
                                          child: Text(
                                            "Precio Club Imperial",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 15.0,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w200),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //Container(),
                                  Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "${formatCurrency.format(actividad.price * 0.90)}",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            /* Container(
                              margin: EdgeInsets.only(top: 20.0, left: 0.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () => Get.to(ReservacionScreen()),
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: 10.0,
                                      top: 10.0,
                                    ),
                                    height: 50.0,
                                    width: 150.0,
                                    padding: EdgeInsets.all(15.0),
                                    decoration: BoxDecoration(
                                      color: Colores.primary,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 3.0,
                                          color: Colors.black.withOpacity(0.2),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Container(
                                      child: Text(
                                        "Boletos",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontFamily: 'BebasNeue',
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                             */Container(
                              margin: EdgeInsets.only(top: 20.0, left: 0.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(top: 0),
                                          child: Icon(
                                            Icons.phone,
                                            color: Colores.primary,
                                            size: 20.0,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 3),
                                          child: Text(
                                            "Contacto 01 (744) 125-0617",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.0,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w200,
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
