import 'package:riverpod/riverpod.dart';
import 'package:riverpod_sample/services/customer_service.dart';
import 'package:riverpod_sample/services/product_service.dart';
import 'package:riverpod_sample/services/purchase_service.dart';

final productServiceProvider = Provider((ref) => ProductService(ref));
final customerServiceProvider = Provider((ref) => CustomerService(ref));
final purchaseServiceProvider = Provider((ref) => PurchaseService(ref));
