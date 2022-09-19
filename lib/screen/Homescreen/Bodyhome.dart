import 'package:flutter/material.dart';

import '../../controller/provider.dart';
import '../../widget/uiprudect.dart';
import '../DetalisScreen/pageDetils.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.dataprov,
  }) : super(key: key);

  final detaprovider dataprov;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xff14213d),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 85, bottom: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            color: Colors.white,
          ),
        ),
        ListView.builder(
          itemCount: dataprov.products.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => pagedetails(
                  index: index,
                ),
              )),
              child: uiprudect(
                dataprov: dataprov,
                index: index,
              ),
            );
          },
        ),
      ],
    );
  }
}
