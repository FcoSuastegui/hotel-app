import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 0, left: 0),
                    child: Text(
                      GetStorages.inst.nombre,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21,
                        fontFamily: 'Oswald',
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top: 10, left: 0),
                    child: GestureDetector(
                      onTap: () => Get.toNamed('/profile'),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Verifica tu perfil",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontFamily: 'Open Sans Condensed',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 3),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.black26,
                              size: 18,
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
          Center(
            child: Container(
              margin: EdgeInsets.only(right: 0, top: 0),
              padding: EdgeInsets.all(1.0),
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('${GetStorages.inst.avatar}'),
              ),
              decoration: new BoxDecoration(
                color: Colors.grey[200], // border color
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
