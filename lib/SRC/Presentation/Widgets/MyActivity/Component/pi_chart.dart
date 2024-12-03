import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/Tiles/activity_progress_circular.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/Tiles/my_activity_next_button.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/Tiles/my_activity_product_cost.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/Tiles/order_button.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/Component/Tiles/pi_chart_circular_container.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PieChartOfMonth extends StatelessWidget {
  const PieChartOfMonth({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.canvasColor,
            ),
            child: Center(
              child: AppText(
                text: "April",
                style: theme.textTheme.titleMedium!.copyWith(
                    color: theme.primaryColorDark, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          20.y,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyActivityNextButton(
                onTap: () {},
                icon: Icons.arrow_back_ios,
              ),
              Container(
                  height: 242.0,
                  width: 242.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 0,
                          color: Theme.of(context).cardColor.withOpacity(0.1),
                          blurRadius: 8),
                    ],
                    shape: BoxShape.circle,
                    color: theme.scaffoldBackgroundColor,
                  ),
                  child: const PiChartCircularContainer()),
              MyActivityNextButton(
                onTap: () {},
                icon: Icons.arrow_forward_ios,
              ),
            ],
          ),
          20.y,
          const MyActivityProductCost(),
          20.y,
          const ActivityProgressCircular(
            ordered: 12,
            received: 7,
            toReceive: 5,
          ),
          30.y,
          const OrderButtonMyActivity(),
        ],
      ),
    );
  }
}
