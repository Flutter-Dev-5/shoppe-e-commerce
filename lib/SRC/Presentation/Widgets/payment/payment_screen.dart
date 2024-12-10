import 'package:tf_ecommerce/SRC/exports.dart';

class PaymentScreen extends StatelessWidget {
  PaymentScreen({super.key});
  final ValueNotifier<bool> isListEmpty = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              1.stB.y,
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: SizedBox(
                  height: size.height - 80,
                  child: CustomScrollView(
                    slivers: [
                      SliverAppBar(
                        pinned: false,
                        floating: true,
                        snap: true,
                        stretch: false,
                        toolbarHeight: 50,
                        expandedHeight: 240,
                        collapsedHeight: 50,
                        backgroundColor: Colors.transparent,
                        surfaceTintColor: theme.scaffoldBackgroundColor,
                        leadingWidth: size.width,
                        flexibleSpace: FlexibleSpaceBar(
                          background: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              40.y,
                              const ShippingAddress(
                                padding: 10,
                              ),
                              const UserContactInformation(
                                padding: 10,
                              ),
                              5.y,
                            ],
                          ),
                        ),
                        leading: AppText(
                          text: AppStrings.payment,
                          style: theme.textTheme.displayLarge,
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SelectedItemOfPaymentDetails(),
                      ),
                      SliverToBoxAdapter(
                        child: SelectShippingOption(),
                      ),
                      const SliverToBoxAdapter(
                        child: PaymentMethodTile(),
                      )
                    ],
                  ),
                ),
              ),
              const PaymentBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
