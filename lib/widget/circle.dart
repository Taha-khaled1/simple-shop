import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/provider.dart';

class cirecl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var dataprovider = Provider.of<detaprovider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: dataprovider.red,
        ),
        SizedBox(
          width: 8,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: dataprovider.blue,
        ),
        SizedBox(
          width: 8,
        ),
        CircleAvatar(
          radius: 12,
          backgroundColor: dataprovider.gray,
        ),
      ],
    );
  }
}
