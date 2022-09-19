import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/provider.dart';

class titelandprice extends StatelessWidget {
  String titel;
  String price;
  titelandprice({required this.price, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          alignment: Alignment.topRight,
          child: Text(
            '${titel}',
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10, top: 10),
          alignment: Alignment.center,
          width: 140,
          padding: EdgeInsets.fromLTRB(2, 7, 2, 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
          ),
          child: Text(
            ' السعر  ${price}\$ ',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 17),
          ),
        ),
      ],
    );
  }
}
