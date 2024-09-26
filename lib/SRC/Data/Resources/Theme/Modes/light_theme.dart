import 'package:tf_ecommerce/SRC/exports.dart';

mixin LightTheme {
  var light = LightColors();
  ThemeData lightTheme() => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: lightTextTheme(),
        primaryColor: light.primaryColor,
        scaffoldBackgroundColor: light.scaffoldBackgroundColor,
        primaryColorDark: light.primaryColorDark,
        primaryColorLight: light.textColor,
        canvasColor: light.secondaryBackground,
        cardColor: light.borderShadowColor,
        splashColor: light.textSecondaryColor,
        unselectedWidgetColor: light.unselectedWidgetColor,
        shadowColor: light.shadowColor,
        indicatorColor: light.indicatorColor,
        highlightColor: light.highlightColor,
      );

  TextTheme lightTextTheme() => TextTheme(
        headlineLarge: GoogleFonts.raleway(
          fontSize: 52,
          fontWeight: FontWeight.w700,
          color: light.textColor,
        ),
        headlineMedium: GoogleFonts.nunitoSans(
          fontSize: 22,
          fontWeight: FontWeight.w300,
          color: light.textColor,
        ),
        headlineSmall: GoogleFonts.nunitoSans(
          fontSize: 19,
          fontWeight: FontWeight.w300,
          color: light.textColor,
        ),
        displayLarge: GoogleFonts.raleway(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: light.textColor,
        ),
        displayMedium: GoogleFonts.raleway(
          fontSize: 21,
          fontWeight: FontWeight.w700,
          color: light.textColor,
        ),
        displaySmall: GoogleFonts.nunitoSans(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: light.textColor,
        ),
        bodyLarge: GoogleFonts.raleway(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: light.commonButtonColor,
        ),
        bodyMedium: GoogleFonts.nunitoSans(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: light.textColor,
        ),
        bodySmall: GoogleFonts.raleway(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: light.primaryColorDark,
        ),
        labelMedium: GoogleFonts.raleway(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: light.textColor,
        ),
        labelLarge: GoogleFonts.nunitoSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: light.textColor.withOpacity(0.5),
        ),
        labelSmall: GoogleFonts.raleway(
          fontSize: 18,
          fontWeight: FontWeight.w200,
          color: light.textColor,
        ),
        titleSmall: GoogleFonts.nunitoSans(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: light.textColor,
        ),
        titleMedium: GoogleFonts.raleway(
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: light.textColor,
        ),
      );

  static ButtonTheme lightButtonTheme = ButtonTheme(
    child: Container(),
  );
}
