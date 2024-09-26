import 'package:tf_ecommerce/SRC/Presentation/Widgets/MyActivity/component/pi_chart.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class MyActivity extends StatelessWidget {
  const MyActivity({super.key});

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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: true,
              stretch: false,
              leadingWidth: size.width,
              collapsedHeight: 70,
              expandedHeight: 120,
              toolbarHeight: 70,
              backgroundColor: theme.scaffoldBackgroundColor,
              surfaceTintColor: Colors.transparent,
              leading: const CustomAppBar(
                isMyActivity: true,
                isHomePage: false,
                text: AppStrings.myActivity,
              ),
            ),
            const SliverToBoxAdapter(
              child: PieChartOfMonth(),
            )
          ],
        ),
      ),
    );
  }
}
