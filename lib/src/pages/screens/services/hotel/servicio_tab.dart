import 'package:clubimperial/src/Helpers/colores.dart';
import 'package:clubimperial/src/Helpers/get_storages.dart';
import 'package:clubimperial/src/Helpers/iconos.dart';
import 'package:clubimperial/src/widgets/Qr/qr_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicioTab extends StatelessWidget {
  const ServicioTab({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List services = [
      {
        "nombre": "Hospedaje",
        "empresa": "Club imperial",
        "icono": "hotel",
      },
      {
        "nombre": "Estacionamiento",
        "empresa": "Club imperial",
        "icono": "direction_card",
      },
      {
        "nombre": "Reglamento",
        "empresa": "Club imperial",
        "icono": "assignment_late"
      },
      {
        "nombre": "Restaurante/Bar",
        "empresa": "Club imperial",
        "icono": "local_bar",
      },
      {
        "nombre": "Albercas",
        "empresa": "Club imperial",
        "icono": "pool",
      },
      {
        "nombre": "Toallas",
        "empresa": "Club imperial",
        "icono": "new_releases",
      },
      {
        "nombre": "Room service",
        "empresa": "Club imperial",
        "icono": "room_service",
      },
      {
        "nombre": "Golf",
        "empresa": "Club imperial",
        "icono": "golf_course",
      },
      {
        "nombre": "SPA/Salón",
        "empresa": "Club imperial",
        "icono": "spa",
      },
      {
        "nombre": "Actividades",
        "empresa": "Club imperial",
        "icono": "beach_access",
      },
      {
        "nombre": "Promociones",
        "empresa": "Club imperial",
        "icono": "new_releases",
      },
      {
        "nombre": "Eventos",
        "empresa": "Club imperial",
        "icono": "event",
      },
    ];

    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => _services(services[index]),
              childCount: services.length,
            ),
          )
        ],
      ),
    );
  }

  Widget _services(services) {
    return Container(
      child: GestureDetector(
        onTap: () => Get.to(
          QrView(
            QrModel(
              title: "Cupon",
              description: "1) No es transferible\n" +
                "2) No acumulable con otras promociones\n" +
                "3) Sujeto a disponibilidad de ocupación",
              data: "${GetStorages.inst.server}"
            )
          )
        ),
        child: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
            bottom: 10,
          ),
          width: Get.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Iconos.icono(
                  icono: services['icono'],
                  color: Colores.primary,
                ),
              ),
              Expanded(
                child: Container(
                  width: Get.width,
                  margin: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                top: 5.0,
                                left: 0.0,
                                bottom: 0.0,
                              ),
                              child: Text(
                                "${services['nombre']}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colores.primary,
                                  fontSize: 17,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 0, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 0, left: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "${services['empresa']}",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 13,
                                            fontFamily: 'Oswald',
                                            fontWeight: FontWeight.w300,
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
            ],
          ),
        ),
      ),
    );
  }
}
