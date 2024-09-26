import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyOrders/ToReceive/to_receive_screen.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.h,
          AppText(
            text: AppStrings.myOrders,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          10.h,
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextContainer(
                    onTap: () {
                      context.to(PaymentScreen());
                    },
                    text: AppStrings.toPay,
                  ),
                  5.w,
                  TextContainer(
                    onTap: () {
                      context.to(const ToReceivedScreen());
                    },
                    isNotification: true,
                    text: AppStrings.toRecieve,
                  ),
                  5.w,
                  TextContainer(
                    onTap: () {},
                    text: AppStrings.toReview,
                  ),
                  5.w,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
