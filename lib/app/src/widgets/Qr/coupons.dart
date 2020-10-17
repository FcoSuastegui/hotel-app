import 'package:clubimperial/app/src/helpers/colores.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCoupon extends StatelessWidget {
  final data;
  QrCoupon(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 0, left: 10, right: 20),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 15),
                    child: BackButton(),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "Cupón",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Oswald',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.only(top: 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                        child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: QrImage(
                              data: data,
                              version: QrVersions.auto,
                              size: 200.0,
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
                                    margin: EdgeInsets.only(
                                        top: 5, left: 0, bottom: 0),
                                    child: Text(
                                      "Condicones de uso:",
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
                                    margin: EdgeInsets.only(
                                      top: 10,
                                      left: 0,
                                      right: 25,
                                      bottom: 0,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "1) No es transferible\n" +
                                          "2) No acumulable con otras promociones\n" +
                                          "3) Sujeto a disponibilidad de ocupación",
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 13,
                                        fontFamily: 'Oswald',
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(top: 0, left: 0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Container(
                                                  margin:
                                                      EdgeInsets.only(top: 4),
                                                  child: Icon(
                                                    Icons.chevron_right,
                                                    color: Colores.primary,
                                                    size: 17,
                                                  ),
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
            ),
          ],
        ),
      ),
    );
  }
}
