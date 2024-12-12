import 'package:shopify_flutter/shopify_flutter.dart';
import 'package:shopify_flutter/models/src/product/product.dart';

class ProductService {
  final ShopifyStore _shopifyStore = ShopifyStore.instance;

  Future<List<Product>> fetchAllProducts() async {
    return await _shopifyStore.getAllProducts();
  }

  Future<List<Product>?> fetchProductById(List<String> productId) async {
    return await _shopifyStore.getProductsByIds(productId);
  }

  Future<List<Product>> fetchProductsByCollection(String collectionId) async {
    return await _shopifyStore.getAllProductsFromCollectionById(collectionId);
  }

  Future<List<Collection>> fetchAllCollections() async {
    return await _shopifyStore.getAllCollections();
  }
}
