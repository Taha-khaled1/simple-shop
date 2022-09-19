import 'package:flutter/material.dart';

class uiprudect extends StatelessWidget {
  var dataprov;
  int index;
  uiprudect({required this.dataprov, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 4, offset: Offset(1, 1))],
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 285,
      child: Stack(
        children: [
          Positioned(
            top: -3,
            left: -30,
            child: Image.network(
              'https://i01.appmifile.com/v1/MI_18455B3E4DA706226CF7535A58E875F0267/pms_1601293021.06313819.png',
              width: 200,
            ),
          ),
          Positioned(
            top: 15,
            right: 20,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${dataprov.products[index].title}',
                    style: TextStyle(fontSize: 35),
                  ),
                  Text(
                    '${dataprov.products[index].subTitle}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 45,
            right: 20,
            child: Container(
              alignment: Alignment.center,
              width: 140,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
              child: Text(
                ' السعر  ${dataprov.products[index].price}\$ ',
                style: TextStyle(fontSize: 17),
              ),
            ),
          )
        ],
      ),
    );
  }
}
