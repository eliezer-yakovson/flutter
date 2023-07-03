
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  int number;

  NumberWidget(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.brown
        ),
        child:Center(child:Text(number.toString()))
    );
  }

}