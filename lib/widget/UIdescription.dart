import 'package:flutter/material.dart';

class uidescribtion extends StatelessWidget {
  var dataprov;
  int index;
  uidescribtion({required this.dataprov, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      color: Color.fromARGB(255, 12, 107, 119),
      child: SingleChildScrollView(
        child: Text(
          '${dataprov.products[index].description}',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
