import 'package:clubimperial/src/helpers/get_storages.dart';
import 'package:clubimperial/src/models/service_model.dart';
import 'package:clubimperial/src/pages/screens/services/services_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;

  const ServiceCard({Key key, this.service}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () => Get.to(
          ServiceScreen(),
          arguments: service.page,
        ),
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 5, bottom: 5, top: 5),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 0),
                height: 100.0,
                width: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "${GetStorages.inst.server}/${service.image}",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                  color: Colors.white,
                  border: Border.all(width: 0.2, color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Stack(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5, left: 0, bottom: 0),
                          child: Text(
                            "${service.name}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Oswald',
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
