import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wac2_provider/my_provider.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
      ),
      body: Center(
        child: Text(Provider.of<MyProvider>(context).text),
      ),
    );
  }
}
