import 'package:riverpod/riverpod.dart';
import 'package:riverpod_sample/models/purchase.dart';
import 'package:riverpod_sample/services/global_providers.dart';

class PurchaseService {
  final Ref container;
  final List<Purchase> _purchases = [];

  PurchaseService(this.container);

  void addPurchase(String customerName, String productName) {
    final customerService = container.read(customerServiceProvider);
    final productService = container.read(productServiceProvider);

    final customer = customerService.customers.firstWhere(
      (customer) => customer.name == customerName,
    );

    final product = productService.products.firstWhere(
      (product) => product.name == productName,
    );

    _purchases.add(Purchase(customer, product));
    print('${customer.name} bought ${product.name} (\$${product.price}).');
  }

  void viewPurchases() {
    if (_purchases.isEmpty) {
      print('No purchases available.');
    } else {
      print('Purchases:');
      for (var purchase in _purchases) {
        print(purchase);
      }
    }
  }

  List<Purchase> get purchases => _purchases;
}
