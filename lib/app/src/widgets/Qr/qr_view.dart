import 'package:clubimperial/app/src/helpers/colores.dart';
import 'package:clubimperial/app/src/widgets/Qr/qr_model.dart';
export 'package:clubimperial/app/src/widgets/Qr/qr_model.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrView extends StatelessWidget {
  final QrModel qr;
  QrView(this.qr);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                top: 0.0,
                left: 10.0,
                right: 20.0,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      top: 15.0,
                    ),
                    child: BackButton(),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      top: 15.0,
                      left: 10.0,
                    ),
                    child: Text(
                      qr.title ?? '',
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
                        margin: EdgeInsets.only(
                          top: 15.0,
                          left: 20.0,
                          right: 20.0,
                        ),
                        child: Container(
                          height: 220.0,
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: QrImage(
                              data: qr.data,
                              version: QrVersions.auto,
                              size: 200.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                          left: 20.0,
                          right: 5.0,
                          top: 10.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                      top: 10.0,
                                      left: 0.0,
                                      right: 25.0,
                                      bottom: 0.0,
                                    ),
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      qr.description,
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
                                      margin: EdgeInsets.only(
                                        top: 0.0,
                                        left: 0.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 10,
                                            ),
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
                                                  margin: EdgeInsets.only(
                                                    top: 4.0,
                                                  ),
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
