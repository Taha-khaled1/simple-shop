import 'package:flutter/material.dart';

import '../../controller/provider.dart';
import '../../widget/circle.dart';
import '../../widget/titelandprice.dart';

class Uidata extends StatelessWidget {
  const Uidata({
    Key? key,
    required this.dataprovider,
    required this.index,
  }) : super(key: key);

  final detaprovider dataprovider;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: MediaQuery.of(context).size.width - 370,
          child: Image.network(
              'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1601293021.06313819.png'),
        ),
        SizedBox(
          height: 20,
        ),
        cirecl(),
        titelandprice(
          price: dataprovider.products[index].price.toString(),
          titel: dataprovider.products[index].title,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
