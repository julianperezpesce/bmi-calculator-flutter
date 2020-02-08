import 'package:flutter/material.dart';

class CardReusable extends StatelessWidget {
  CardReusable({@required this.colores, this.cardChild, this.onPress});

  final Color colores;
  final cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colores,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}