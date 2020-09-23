import 'package:clubimperial/src/controllers/perfil_controller.dart';
import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/models/perfil_model.dart';
import 'package:clubimperial/src/widgets/AppBar/app_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PerfilController>(
      init: PerfilController(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarCustom(
          appBarTitle: 'Mi perfil',
          leadingIcon: Icons.clear,
        ),
        body: Obx(
          () => _.loading.value
              ? Center(child: CircularProgressIndicator())
              : perfilCard(),
        ),
      ),
    );
  }

  Widget perfilCard() {
    final ProfileModel perfil = Get.find<PerfilController>().perfil;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(right: 0, top: 0),
                        //transform: Matrix4.translationValues(0.0, 0.0, 0.0),
                        padding: EdgeInsets.all(1.0),
                        child: CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              NetworkImage('${GetStorages.inst.avatar}'),
                        ),
                        decoration: new BoxDecoration(
                          color: Colors.grey[200], // border color
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Colors.black.withOpacity(.2),
                              //offset: Offset(6.0, 7.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(left: 65, top: 75),
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: Colores.primary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                        ),
                        child: Icon(
                          Icons.photo_camera,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Nombre de usuario",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    perfil.usuario ?? '',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Nombre completo",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    perfil.nombre ?? '',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Correo",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    perfil.correo ?? '',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Telefóno",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    perfil.telefono ?? '',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
              border: Border.all(width: 0.15, color: Colors.black38),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Fecha de nacimiento",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    perfil.fechaNacimiento ?? '',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
            margin: EdgeInsets.only(top: 30, left: 25, right: 25),
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dirección",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 14,
                    fontFamily: 'Oswald',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0.0, top: 10.0),
                  child: Text(
                    perfil.direccion ?? '',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontFamily: 'Oswald',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: EdgeInsets.only(top: 20, left: 25, right: 25),
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
        ],
      ),
    );
  }
}
