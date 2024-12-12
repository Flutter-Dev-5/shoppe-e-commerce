import 'package:shopify_flutter/shopify_flutter.dart';

class AuthService {
  final ShopifyAuth _shopifyAuth = ShopifyAuth.instance;

  Future<ShopifyUser> signIn(String email, String password) async {


    return await _shopifyAuth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<ShopifyUser> signUp(String email, String password, {String? firstName, String? lastName, bool? acceptsMarketing}) async {
    return await _shopifyAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      acceptsMarketing: acceptsMarketing, phone: '',
    );
  }

  Future<void> resetPassword(String email) async {
    await _shopifyAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> signOut() async {
    await _shopifyAuth.signOutCurrentUser();
  }

  Future<ShopifyUser?> getCurrentUser({bool forceRefresh = false}) async {
    return await _shopifyAuth.currentUser(forceRefresh: forceRefresh);
  }
}
