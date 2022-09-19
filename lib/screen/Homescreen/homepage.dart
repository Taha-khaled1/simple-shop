import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/provider.dart';
import 'Bodyhome.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dataprov = Provider.of<detaprovider>(context);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xff14213d),
        elevation: 0,
        toolbarHeight: 70,
        title: Text(
          'المتجر الاكتروني',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Body(dataprov: dataprov),
    );
  }
}
