import 'package:clubimperial/src/views/profile/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCard extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
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
                  controller.perfil.usuario ?? '',
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
                  controller.perfil.nombre ?? '',
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
                  controller.perfil.correo ?? '',
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
                  controller.perfil.telefono ?? '',
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
                  controller.perfil.fechaNacimiento ?? '',
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
                  controller.perfil.direccion ?? '',
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
    );
  }
}
