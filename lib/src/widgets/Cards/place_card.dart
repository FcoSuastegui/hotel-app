import 'package:clubimperial/src/Models/place_model.dart';
import 'package:flutter/material.dart';
import 'package:clubimperial/src/helpers/colores.dart';
import 'package:clubimperial/src/helpers/get_storages.dart';

class PlaceCard extends StatelessWidget {
  final PlaceModel visited;

  const PlaceCard({Key key, this.visited}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 0, bottom: 10),
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
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 0),
            height: 90,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    NetworkImage("${GetStorages.inst.server}/${visited.image}"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.15),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                          margin: EdgeInsets.only(top: 5, left: 0, bottom: 0),
                          child: Text(
                            "${visited.name}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.black,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "${visited.description}",
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
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colores.primary,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colores.primary,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colores.primary,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colores.primary,
                                      size: 13,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colores.primary,
                                      size: 13,
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
    );
  }
}
