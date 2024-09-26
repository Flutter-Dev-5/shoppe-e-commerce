import 'package:country_code_picker/country_code_picker.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

class PhoneNumber extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final double radius;
  const PhoneNumber({
    super.key,
    required this.hintText,
    required this.controller,
    this.radius = 50,
  });

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  OverlayPortalController overlayPortalController = OverlayPortalController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    // String selectedCountry = countries[0].flag;
    return TextField(
      style: theme.textTheme.labelSmall,
      keyboardType: TextInputType.number,
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 2),
        filled: true,
        fillColor: Theme.of(context).canvasColor,
        border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(widget.radius),
            )),
        prefix: CountryCodePicker(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
          showDropDownButton: true,
          flagWidth: 18,
          onChanged: print,
          initialSelection: 'PK',
          showFlagMain: true,
          showCountryOnly: true,
          barrierColor: Theme.of(context).canvasColor,
          showOnlyCountryWhenClosed: false,
          backgroundColor: Theme.of(context).canvasColor,
          alignLeft: false,
        ),
        hintText: widget.hintText,
        hintStyle: Theme.of(context).textTheme.labelLarge,
      ),
    );

    // return CommonTextField(
    //   controller: TextEditingController(),
    //   hintText: "Enter phone Number",
    //   hintStyle: theme.textTheme.bodyMedium,
    //   style: theme.textTheme.bodyLarge!
    //       .copyWith(color: theme.colorScheme.tertiary),
    //   textInputType: TextInputType.number,
    //   prefixIcon: QuickPortal(
    //     controller: overlayPortalController,
    //     overlayChild: Container(
    //       decoration: BoxDecoration(
    //         color: theme.colorScheme.surface,
    //         borderRadius: BorderRadius.circular(12),
    //       ),
    //       child: ListView(
    //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    //         children: countries
    //             .map((country) => InkWell(
    //                   onTap: () {
    //                     FocusScope.of(context).unfocus();
    //                     selectedCountry = "+ ${country.flag}";
    //                     setState(() {});
    //                   },
    //                   child: Column(
    //                     children: [
    //                       Row(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           SizedBox(
    //                               width: 60,
    //                               height: 35,
    //                               child: AppText(text: selectedCountry)),
    //                           const SizedBox(
    //                             height: 23,
    //                             child: Divider(),
    //                           ),
    //                           Expanded(
    //                             child: Align(
    //                               alignment: Alignment.centerLeft,
    //                               child: AppText(
    //                                 overflow: TextOverflow.ellipsis,
    //                                 text: "  ${country.name}",
    //                                 style: theme.textTheme.bodyLarge!.copyWith(
    //                                     color: theme.colorScheme.tertiary),
    //                               ),
    //                             ),
    //                           ),
    //                         ],
    //                       ),
    //                       const Divider()
    //                     ],
    //                   ),
    //                 ))
    //             .toList(),
    //       ),
    //     ),
    //     child: Row(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         AppText(
    //           text: selectedCountry,
    //           style: theme.textTheme.bodyLarge!
    //               .copyWith(color: theme.colorScheme.tertiary),
    //         ),
    //         const SizedBox(width: 9.0),
    //       ],
    //     ),
    //   ),
    // );
  }
}
