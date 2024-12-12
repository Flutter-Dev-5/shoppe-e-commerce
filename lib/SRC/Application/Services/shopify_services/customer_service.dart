import 'package:shopify_flutter/shopify_flutter.dart';

class CustomerService {
  final ShopifyCustomer _shopifyCustomer = ShopifyCustomer.instance;

  Future<void> updateCustomer({
    required String customerAccessToken,
    String? email,
    String? firstName,
    String? lastName,
    String? password,
    String? phoneNumber,
    bool? acceptsMarketing,
  }) async {
    await _shopifyCustomer.customerUpdate(
      customerAccessToken: customerAccessToken,
      email: email,
      firstName: firstName,
      lastName: lastName,
      password: password,
      phoneNumber: phoneNumber,
      acceptsMarketing: acceptsMarketing,
    );
  }

  Future<void> createCustomerAddress({
    required String customerAccessToken,
    required String address1,
    String? address2,
    String? company,
    required String city,
    required String country,
    required String firstName,
    required String lastName,
    String? phone,
    String? province,
    required String zip,
  }) async {
    await _shopifyCustomer.customerAddressCreate(
      customerAccessToken: customerAccessToken,
      address1: address1,
      address2: address2,
      company: company,
      city: city,
      country: country,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      province: province,
      zip: zip,
    );
  }
}
