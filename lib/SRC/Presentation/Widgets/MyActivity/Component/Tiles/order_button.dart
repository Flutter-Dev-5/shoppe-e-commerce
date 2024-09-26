import 'package:tf_ecommerce/SRC/exports.dart';

class OrderButtonMyActivity extends StatelessWidget {
  const OrderButtonMyActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50,
        child: CommonButton(
            onTap: () {
              context.to(const HistoryOfMyOrders());
            },
            text: AppStrings.orderHistory));
  }
}
