/* import 'package:clubimperial/app/src/Helpers/colors.dart';
import 'package:flutter/material.dart';


import 'package:clubimperial/app/src/Widgets/scaffoldTemplate.dart';

import 'package:qr_flutter/qr_flutter.dart';

class QrServices extends StatefulWidget {

  final Map<String, dynamic> data;
  QrServices(this.data);

  @override
  _QrServicesState createState() => _QrServicesState();
}

class _QrServicesState extends State<QrServices> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(
      appbar: true,
      leading: Icons.clear,
      title: "Cupon QR", 
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.2),
                            ),
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                      height: 300.0,
                  child: Center(
                    child: Container(
                      
                      padding: EdgeInsets.all(20.0),
                      child: QrImage(
                        data: widget.data['nombre'],
                        version: QrVersions.auto,
                      ),
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
                              margin: EdgeInsets.only(top: 5, left: 0, bottom: 0),
                              child: Text(
                                "Condicones de uso:",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w400
                                ),
                              )
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
                            margin: EdgeInsets.only(top: 10,left: 0,right: 25,bottom: 0),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "1) No es transferible\n" +
                              "2) No acumulable con otras promociones\n"+
                              "3) Sujeto a disponibilidad de ocupación",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                  fontFamily: 'Oswald',
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(top: 0, left: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Text(
                                          "Contactanos",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colores.primary,
                                            fontSize: 14,
                                            fontFamily: 'Oswald',
                                            fontWeight:FontWeight.w400
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 4),
                                          child: Icon(Icons.chevron_right,color: Colores.primary,size: 17)
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
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
    );
  }
}
 */