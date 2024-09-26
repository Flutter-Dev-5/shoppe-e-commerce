import 'package:tf_ecommerce/SRC/Data/ProductData/CountryData/all_countries.dart';
import 'package:tf_ecommerce/SRC/Domain/Models/CountryModel/country_model.dart';
import 'package:tf_ecommerce/SRC/Presentation/Widgets/setting/Component/shipping_address_setting.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({super.key});

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  final ValueNotifier<List<CountryModel>> filteredCountries = ValueNotifier([]);

  @override
  void initState() {
    // TODO: implement initState
    filteredCountries.value = AllCountries.allCountries;
    super.initState();
  }

  void filterCountries(String query) {
    if (query.isEmpty) {
      filteredCountries.value = AllCountries.allCountries;
    } else {
      filteredCountries.value = AllCountries.allCountries
          .where((country) =>
              country.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final Size size = MediaQuery.sizeOf(context);
    final TextEditingController searchController = TextEditingController();

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.primaryVelocity! > 0) {
          context.back();
        }
      },
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 20,
              top: 20.0,
            ),
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: false,
                  floating: true,
                  snap: true,
                  stretch: false,
                  leadingWidth: size.width,
                  collapsedHeight: 60,
                  expandedHeight: 60,
                  toolbarHeight: 60,
                  backgroundColor: theme.scaffoldBackgroundColor,
                  surfaceTintColor: Colors.transparent,
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: AppStrings.setting,
                        style: theme.textTheme.displayMedium,
                      ),
                      10.h,
                      AppText(
                        text: AppStrings.country,
                        style: theme.textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      20.h,
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: theme.primaryColorDark.withOpacity(0.1),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppText(
                              text: countryName,
                              style: theme.textTheme.titleMedium,
                            ),
                            const SelectedMarkContainer(
                                width: 20, height: 20, iconSize: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SliverToBoxAdapter(child: Container()),
                SliverToBoxAdapter(
                    child: ValueListenableBuilder<List<CountryModel>>(
                        valueListenable: filteredCountries,
                        builder: (context, countries, child) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: TextField(
                                  style: theme.textTheme.titleSmall!
                                      .copyWith(fontSize: 14),
                                  controller: searchController,
                                  decoration: InputDecoration(
                                    labelStyle: theme.textTheme.titleSmall!
                                        .copyWith(fontSize: 14),
                                    labelText: 'Search Country',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: theme.primaryColorDark,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: theme.primaryColorDark,
                                      ),
                                    ),
                                  ),
                                  onChanged: (query) {
                                    filterCountries(query);
                                  },
                                ),
                              ),
                              10.h,
                              SizedBox(
                                height: size.height - 250,
                                child: ListView.builder(
                                  itemCount: countries.length,
                                  itemBuilder: (context, index) {
                                    final country = countries[index];
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          countryName = countries[index].name;
                                        });
                                      },
                                      child: SizedBox(
                                        height: 40,
                                        child: AppText(
                                          text: country.name,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        })),
              ],
            )),
      ),
    );
  }
}
