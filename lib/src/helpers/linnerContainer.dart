import 'package:flutter/material.dart';

class LinnerContainer extends StatelessWidget {
  final double top, left, right;
  LinnerContainer({ this.top = 20.0, this.left = 25, this.right = 25 });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: 20, left: 25, right: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Colors.black38,
            ),
          ],
          border: Border.all(width: 0.15, color: Colors.black38)
      )
    );
  }
  
}