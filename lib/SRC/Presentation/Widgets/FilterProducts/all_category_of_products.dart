import 'package:tf_ecommerce/SRC/Data/SearchData/all_category.dart';
import 'package:tf_ecommerce/SRC/Data/SearchData/all_category_data_male.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class AllCategoryScreen extends StatelessWidget {
  final ValueNotifier<String> selectedCategory = ValueNotifier<String>("All");

  AllCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final theme = Theme.of(context);

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      pinned: false,
                      floating: true,
                      snap: true,
                      stretch: false,
                      leadingWidth: size.width,
                      collapsedHeight: 70,
                      expandedHeight: 120,
                      toolbarHeight: 70,
                      backgroundColor: theme.scaffoldBackgroundColor,
                      surfaceTintColor: Colors.transparent,
                      leading: const FilterHeader(),
                      flexibleSpace: FlexibleSpaceBar(
                        background: CategoryList(
                          selectedCategory: selectedCategory,
                        ),
                      ),
                    ),
                    // Use ValueListenableBuilder to listen to the selected category
                    ValueListenableBuilder<String>(
                      valueListenable: selectedCategory,
                      builder: (context, value, child) {
                        if (value == "Female") {
                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return ExpandAbleTile(
                                  categories: AllCategoryDataFemale
                                      .allData[index].productCategory,
                                  title: AllCategoryDataFemale
                                      .allData[index].title,
                                  imageAddress: AllCategoryDataFemale
                                      .allData[index].image,
                                );
                              },
                              childCount: AllCategoryDataFemale.allData.length,
                            ),
                          );
                        } else if (value == "Male") {
                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return ExpandAbleTile(
                                  categories: AllCategoryDataMale
                                      .allData[index].productCategory,
                                  title:
                                      AllCategoryDataMale.allData[index].title,
                                  imageAddress:
                                      AllCategoryDataMale.allData[index].image,
                                );
                              },
                              childCount: AllCategoryDataMale.allData.length,
                            ),
                          );
                        } else if (value == "All") {
                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) {
                                return ExpandAbleTile(
                                  categories: AllCategoryData
                                      .allData[index].productCategory,
                                  title: AllCategoryData.allData[index].title,
                                  imageAddress:
                                      AllCategoryData.allData[index].image,
                                );
                              },
                              childCount: AllCategoryData.allData.length,
                            ),
                          );
                        } else {
                          return const SliverToBoxAdapter(
                              child: SizedBox.shrink());
                        }
                      },
                    ),
                    const SliverToBoxAdapter(
                      child: JustForYouTileFilter(),
                    )
                  ],
                ))),
      ),
    );
  }
}
