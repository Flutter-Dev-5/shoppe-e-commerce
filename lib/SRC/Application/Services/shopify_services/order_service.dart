import 'package:shopify_flutter/shopify_flutter.dart';
import 'package:shopify_flutter/models/src/order/order.dart';

class OrderService {
  final ShopifyOrder _shopifyOrder = ShopifyOrder.instance;

  Future<List<Order>?> fetchAllOrders(String customerAccessToken) async {
    return await _shopifyOrder.getAllOrders( customerAccessToken);
  }

  Future<Order> fetchOrderById(String orderId) async {

    // Implement fetching order by ID if the method is available in the package
    // Currently, shopify_flutter does not provide a direct method for this
    throw UnimplementedError('fetchOrderById is not implemented.');
  }
}
