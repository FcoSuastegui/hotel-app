import 'package:clubimperial/src/data/models/cupon_model.dart';
import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/iconos.dart';
import 'package:clubimperial/src/widgets/Qr/qr_view.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

class CouponCard extends StatelessWidget {
  final CouponsModel coupon;
  final bool status;
  CouponCard({this.coupon, this.status});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => Get.to(
          QrView(
            QrModel(
              title: "Cupon",
              description: "1) No es transferible\n" +
                  "2) No acumulable con otras promociones\n" +
                  "3) Sujeto a disponibilidad de ocupación",
              data: "${GetStorages.inst.server}${coupon.qr}",
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 5, top: 5),
          margin: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Colors.black.withOpacity(.2),
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 0, bottom: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(
                                        top: 5,
                                        left: 3,
                                        bottom: 0,
                                        right: 15,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            child: Text(
                                              "${coupon.establecimiento}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 19,
                                                fontFamily: 'Oswald',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 2, left: 0),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              margin: EdgeInsets.only(right: 0),
                                              child: Row(
                                                children: <Widget>[
                                                  Iconos.icono(
                                                      icono: coupon.icono,
                                                      color: status
                                                          ? Colores.primary
                                                          : Colors.grey[500],
                                                      size: 17.0),
                                                  Expanded(
                                                    child: Container(
                                                      margin: EdgeInsets.only(
                                                        left: 3,
                                                      ),
                                                      child: Text(
                                                        "${coupon.nombre}",
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          color: Colors.black54,
                                                          fontSize: 12,
                                                          fontFamily: 'Oswald',
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
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
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 0,
                                        right: 0,
                                        top: 3,
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                      ),
                                      child: Container(
                                        margin: EdgeInsets.only(top: 0),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin:
                                                  EdgeInsets.only(left: 1.5),
                                              child: Icon(
                                                Icons.timer,
                                                color: status
                                                    ? Colores.primary
                                                    : Colors.grey[500],
                                                size: 14,
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                              child: Text(
                                                "${coupon.status}",
                                                style: TextStyle(
                                                  color: Colors.grey[400],
                                                  fontSize: 11,
                                                  fontFamily: 'Oswald',
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              CachedNetworkImage(
                                imageUrl:
                                    "${GetStorages.inst.server}/${coupon.imagen}",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 5),
                                  padding: EdgeInsets.only(left: 0),
                                  height: 115,
                                  width: 180,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.0)),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 3.0,
                                        color: Colors.black.withOpacity(.5),
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        padding: EdgeInsets.only(left: 0),
                                        height: 130,
                                        width: 200,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.15),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15.0),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.bottomLeft,
                                        margin: EdgeInsets.only(
                                            top: 10, left: 10, bottom: 10),
                                        child: Text(
                                          "${coupon.nombre}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontFamily: 'BebasNeue',
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                                fadeOutDuration:
                                    const Duration(milliseconds: 400),
                                fadeInDuration:
                                    const Duration(milliseconds: 800),
                              ),
                            ],
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
    );
  }
}
