import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/provider.dart';
import 'BodyDetalis.dart';
import '../Homescreen/homepage.dart';

class pagedetails extends StatelessWidget {
  int index;
  pagedetails({required this.index});

  @override
  Widget build(BuildContext context) {
    var dataprovider = Provider.of<detaprovider>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => homepage(),
                  ));
                },
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black,
                )),
            Text(
              'رجوع',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: BodyDetalis(dataprovider: dataprovider, index: index),
    );
  }
}
