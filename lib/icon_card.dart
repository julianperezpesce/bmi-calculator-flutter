import 'package:flutter/material.dart';
import 'constants.dart';


class IconCard extends StatelessWidget {
  IconCard({this.awesomeIconCard, this.texto});


  final IconData awesomeIconCard;
  final String texto;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          awesomeIconCard,
          size: 80.0,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          texto,
          style: kTextStyle,
        ),
      ],
    );
  }
}
