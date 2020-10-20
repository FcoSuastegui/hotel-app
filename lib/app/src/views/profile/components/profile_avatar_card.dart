import 'package:clubimperial/app/src/helpers/get_storages.dart';
import 'package:flutter/material.dart';

class ProfileAvatarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    backgroundImage: NetworkImage('${GetStorages.inst.avatar}'),
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
              /* GestureDetector(
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
                    ), */
            ],
          ),
        ],
      ),
    );
  }
}
