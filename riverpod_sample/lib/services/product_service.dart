import 'package:riverpod/riverpod.dart';
import 'package:riverpod_sample/models/product.dart';

class ProductService {
  final Ref container;
 final List<Product> _products = [];

  ProductService(this.container);

  void addProduct(String name, double price) {
    _products.add(Product(name, price));
    print('$name (\$$price) has been added.');
  }

  void viewProducts() {
    if (_products.isEmpty) {
      print('No products available.');
    } else {
      print('Products:');
      for (var product in _products) {
        print(product);
      }
    }
  }

  List<Product> get products => _products;
}
