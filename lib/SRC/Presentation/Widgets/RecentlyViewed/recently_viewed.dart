import 'package:tf_ecommerce/SRC/exports.dart';

class RecentlyViewedRecord extends StatelessWidget {
  const RecentlyViewedRecord({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onHorizontalDragEnd: (details) {
        context.back();
      },
      child: Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: AppText(
                  text: AppStrings.recentlyViewed,
                  style: theme.textTheme.displayMedium,
                ),
                automaticallyImplyLeading: true,
                backgroundColor: theme.scaffoldBackgroundColor,
                surfaceTintColor: Colors.transparent,
                floating: true,
                pinned: true,
                snap: true,
                stretch: false,
                expandedHeight: 40,
                collapsedHeight: 30,
                toolbarHeight: 30,
                leadingWidth: size.width,
              ),
              SliverToBoxAdapter(
                child: RecentlyViewedOfRecentScreen(),
              ),
              const SliverToBoxAdapter(
                child: RecentlyViewItemList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
