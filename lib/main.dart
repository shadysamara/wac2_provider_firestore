import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wac2_provider/my_provider.dart';
import 'package:wac2_provider/page1.dart';
import 'package:wac2_provider/product_model.dart';
import 'package:wac2_provider/product_widget.dart';

void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
      create: (context) => MyProvider(), child: MaterialApp(home: MyApp())));
}

class MyApp extends StatelessWidget {
  String text = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider App'),
          bottom: TabBar(tabs: [
            Tab(
              child: Icon(Icons.home),
            ),
            Tab(
              child: Icon(
                Icons.favorite,
              ),
            )
          ]),
        ),
        body: TabBarView(
          children: [
            Selector<MyProvider, List<ProductModel>>(builder: (context, x, w) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: x.length,
                      itemBuilder: (context, index) {
                        return ProductWidget(x[index].id);
                      }));
            }, selector: (context, provider) {
              return provider.products;
            }),
            Consumer<MyProvider>(builder: (X, Y, Z) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      itemCount: Y.favouriteProducts.length,
                      itemBuilder: (context, index) {
                        return ProductWidget(
                            Y.favouriteProducts.toList()[index].id);
                      }));
            })
          ],
        ),
      ),
    );
  }
}
