import 'package:shopify_flutter/shopify_flutter.dart';
import 'package:shopify_flutter/models/src/cart/cart.dart';

class CartService {
  final ShopifyCart _shopifyCart = ShopifyCart.instance;

  Future<Cart> createCart(CartInput cartInput) async {

    return await _shopifyCart.createCart(cartInput);
  }

  Future<Cart> getCartById(String cartId) async {
    return await _shopifyCart.getCartById(cartId);
  }

  Future<Cart> addItemsToCart(String cartId, List<CartLineUpdateInput> cartLineInputs) async {

    return await _shopifyCart.addLineItemsToCart(cartId: cartId, cartLineInputs: cartLineInputs);
  }

  Future<Cart> removeItemsFromCart(String cartId, List<String> lineIds) async {
    return await _shopifyCart.removeLineItemsFromCart(cartId: cartId, lineIds: lineIds);
  }

  Future<Cart> updateItemsInCart(String cartId, List<CartLineUpdateInput> cartLineInputs) async {
    return await _shopifyCart.updateLineItemsInCart(cartId: cartId, cartLineInputs: cartLineInputs);
  }
  /// Updates the buyer identity in the cart.
  Future<Cart> updateBuyerIdentity(String cartId, CartBuyerIdentityInput buyerIdentity) async {
    try {
      return await _shopifyCart.updateBuyerIdentityInCart(cartId: cartId, buyerIdentity: buyerIdentity);
    } catch (e) {
      print('Error updating buyer identity: $e');
      rethrow;
    }
  }

  /// Completes the checkout process by retrieving the checkout URL.
  Future<String?> completeCheckout(String cartId) async {
    try {
      final cart = await getCartById(cartId);
      return cart.checkoutUrl;
    } catch (e) {
      print('Error completing checkout: $e');
      rethrow;
    }
  }
}
