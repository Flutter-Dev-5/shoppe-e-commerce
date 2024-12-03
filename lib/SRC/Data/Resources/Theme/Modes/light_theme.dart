import 'package:tf_ecommerce/SRC/exports.dart';

mixin LightTheme {
  var light = LightColors;
  ThemeData lightTheme() => ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        textTheme: lightTextTheme(),
        primaryColor: LightColors.primaryColor,
        scaffoldBackgroundColor: LightColors.scaffoldBackgroundColor,
        primaryColorDark: LightColors.primaryColorDark,
        primaryColorLight: LightColors.textColor,
        canvasColor: LightColors.secondaryBackground,
        cardColor: LightColors.borderShadowColor,
        splashColor: LightColors.textSecondaryColor,
        unselectedWidgetColor: LightColors.unselectedWidgetColor,
        shadowColor: LightColors.shadowColor,
        indicatorColor: LightColors.indicatorColor,
        highlightColor: LightColors.highlightColor,
      );

  TextTheme lightTextTheme() => TextTheme(
        headlineLarge: GoogleFonts.raleway(
          fontSize: 52,
          fontWeight: FontWeight.w700,
          color: LightColors.textColor,
        ),
        headlineMedium: GoogleFonts.nunitoSans(
          fontSize: 22,
          fontWeight: FontWeight.w300,
          color: LightColors.textColor,
        ),
        headlineSmall: GoogleFonts.nunitoSans(
          fontSize: 19,
          fontWeight: FontWeight.w300,
          color: LightColors.textColor,
        ),
        displayLarge: GoogleFonts.raleway(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: LightColors.textColor,
        ),
        displayMedium: GoogleFonts.raleway(
          fontSize: 21,
          fontWeight: FontWeight.w700,
          color: LightColors.textColor,
        ),
        displaySmall: GoogleFonts.nunitoSans(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: LightColors.textColor,
        ),
        bodyLarge: GoogleFonts.raleway(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: LightColors.commonButtonColor,
        ),
        bodyMedium: GoogleFonts.nunitoSans(
          fontSize: 15,
          fontWeight: FontWeight.w300,
          color: LightColors.textColor,
        ),
        bodySmall: GoogleFonts.raleway(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: LightColors.primaryColorDark,
        ),
        labelMedium: GoogleFonts.raleway(
          fontSize: 15,
          fontWeight: FontWeight.w700,
          color: LightColors.textColor,
        ),
        labelLarge: GoogleFonts.nunitoSans(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: LightColors.textColor.withOpacity(0.5),
        ),
        labelSmall: GoogleFonts.raleway(
          fontSize: 18,
          fontWeight: FontWeight.w200,
          color: LightColors.textColor,
        ),
        titleSmall: GoogleFonts.nunitoSans(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: LightColors.textColor,
        ),
        titleMedium: GoogleFonts.raleway(
          fontSize: 17,
          fontWeight: FontWeight.w700,
          color: LightColors.textColor,
        ),
      );

  static ButtonTheme lightButtonTheme = ButtonTheme(
    child: Container(),
  );
}
