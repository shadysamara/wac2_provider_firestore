import 'package:flutter/material.dart';
import 'package:wac2_provider/product_model.dart';

class MyProvider extends ChangeNotifier {
  List<ProductModel> favouriteProducts = [];
  setFavouriteProducts() {
    this.favouriteProducts =
        products.where((element) => element.isFavourite).toList();
    notifyListeners();
  }

  List<ProductModel> products = [
    ProductModel(1,
        imageUrl:
            'https://images.unsplash.com/photo-1626244297263-e3020f5b658f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
        name: 'Trees',
        price: 1000),
    ProductModel(2,
        imageUrl:
            'https://images.unsplash.com/photo-1615884465996-2e5d965fc73d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
        name: 'Table',
        price: 30),
    ProductModel(3,
        imageUrl:
            'https://images.unsplash.com/photo-1626160199683-6f9993bee037?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
        name: 'Food',
        price: 15),
    ProductModel(4,
        imageUrl:
            'https://images.unsplash.com/photo-1471897488648-5eae4ac6686b?ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
        name: 'labtop',
        price: 900),
    ProductModel(5,
        imageUrl:
            'https://images.unsplash.com/photo-1626209549536-c483af22ca11?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
        name: 'Water',
        price: 10),
  ];
  addToFavourite(ProductModel productModel) {
    int index = products.indexOf(productModel);
    products[index].isFavourite = !products[index].isFavourite;
    setFavouriteProducts();
  }

  String text = 'initial value';
  changeTextValue(String value) {
    this.text = value;
    notifyListeners();
  }
}
