import 'package:clubimperial/src/Helpers/colores.dart';
import 'package:clubimperial/src/Helpers/get_storages.dart';
import 'package:clubimperial/src/Models/place_model.dart';
import 'package:clubimperial/src/controllers/servicio_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestauranteTab extends StatelessWidget {
  RestauranteTab({Key key}) : super(key: key);
  final PlaceModel restaurante = Get.find<ServicioController>().place;
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
                          "${GetStorages.inst.server}/${restaurante.image}",
                        ),
                        fit: BoxFit.cover,
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
                                "${restaurante.name}",
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
                                              "${restaurante.place}",
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 14,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            /* Container(
                              margin: EdgeInsets.only(top: 3, left: 0),
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
                                            size: 15,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 3),
                                          child: Text(
                                            "+88 01720-848705",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12,
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
                                          "/per night",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 13,
                                              fontFamily: 'Oswald',
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                             */
                            Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(
                                top: 20,
                                left: 0,
                                right: 15,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    color: Colors.black38,
                                    //offset: Offset(6.0, 7.0),
                                  ),
                                ],
                                border: Border.all(
                                  width: 0.15,
                                  color: Colors.black38,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Text(
                                "Descripción",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 14,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 15),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  child: Text(
                                    restaurante.description,
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
                              margin: EdgeInsets.only(top: 25, left: 0),
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
                                            size: 25,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(left: 3),
                                          child: Text(
                                            "Contacto 01 (744) 125-0617",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
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
