import 'package:tf_ecommerce/SRC/exports.dart';

import '../../Colors/color_palette.dart';

mixin DarkTheme {
  var dark = AppColors.dark;
  ThemeData darkThemeData() => ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: dark.secondaryBackground,
      primaryColorDark: dark.buttonColor,
      scaffoldBackgroundColor: dark.primaryColor,
      textTheme: darkTextTheme(),
      primaryColorLight: dark.textColor);

  TextTheme darkTextTheme() => TextTheme(
        headlineLarge: GoogleFonts.raleway(
          fontSize: 52,
          fontWeight: FontWeight.w700,
          color: dark.textColor,
        ),
        headlineMedium: TextStyle(
          // fontFamily: "Gabarito",
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: dark.textColor,
        ),
        bodyLarge: TextStyle(
          // fontFamily: "CircularStd",
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: dark.textColor,
        ),
        headlineSmall: TextStyle(
          // fontFamily: "Gabarito",
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: dark.textColor,
        ),
        bodyMedium: TextStyle(
          // fontFamily: "CircularStd",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: dark.textColor,
        ),
        bodySmall: TextStyle(
          // fontFamily: "CircularStd",
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: dark.textColor,
        ),
        labelMedium: TextStyle(
          // fontFamily: "Gabarito",
          fontSize: 12,
          fontWeight: FontWeight.w700,
          color: dark.textColor,
        ),
        labelLarge: TextStyle(
          // fontFamily: "CircularStd",
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: dark.textColor.withOpacity(0.5),
        ),
      );
}
