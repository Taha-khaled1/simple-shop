import 'package:flutter/material.dart';
import '../../controller/provider.dart';
import '../../widget/UIdescription.dart';
import 'Uidata.dart';

class BodyDetalis extends StatelessWidget {
  const BodyDetalis({
    Key? key,
    required this.dataprovider,
    required this.index,
  }) : super(key: key);

  final detaprovider dataprovider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromARGB(255, 12, 107, 119),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              color: Colors.grey[200],
            ),
            child: Uidata(dataprovider: dataprovider, index: index),
          ),
          uidescribtion(
            dataprov: dataprovider,
            index: index,
          ),
        ],
      ),
    );
  }
}
