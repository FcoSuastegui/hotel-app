import 'package:flutter/material.dart';

class LinnerContainer extends StatelessWidget {
  final double top, left, right;
  LinnerContainer({
    this.top = 20.0,
    this.left = 25.0,
    this.right = 25.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        top: top,
        left: left,
        right: right,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            color: Colors.black38,
          ),
        ],
        border: Border.all(
          width: 0.15,
          color: Colors.black38,
        ),
      ),
    );
  }
}
