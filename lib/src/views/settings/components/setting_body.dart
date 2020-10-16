import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/helpers/linnerContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Get.toNamed('/password'),
          child: Container(
            margin: EdgeInsets.only(top: 15.0, left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cambia contraseña",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(Icons.lock, color: Colors.black26, size: 18)
              ],
            ),
          ),
        ),
        LinnerContainer(),
        GestureDetector(
          onTap: () async => await _logout(),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Cerrar sesión",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.black26,
                  size: 20,
                )
              ],
            ),
          ),
        ),
        LinnerContainer(),
      ],
    );
  }

    Future<void> _logout() async {
    await Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        title: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Text(
                      "¿Deseas salir de la aplicación?",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 14,
                        fontFamily: 'Oswald',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            GetStorages.inst.clear();
                            Get.offAllNamed('/');
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                              left: 0,
                              right: 5,
                              top: 20,
                              bottom: 0,
                            ),
                            decoration: BoxDecoration(
                              color: Colores.primary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Text(
                              "Si",
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
                      Expanded(
                        child: GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(
                              left: 5,
                              right: 0,
                              top: 20,
                              bottom: 0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(color: Colors.black54, width: 0.5),
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                            ),
                            child: Text(
                              "No",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 17,
                                fontFamily: 'BebasNeue',
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
