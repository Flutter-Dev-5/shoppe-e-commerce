import 'package:tf_ecommerce/SRC/exports.dart';

class AppTheme with DarkTheme, LightTheme {
  static ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);
  static toggleTheme() {
    themeMode.value =
        (themeMode.value == ThemeMode.light) ? ThemeMode.dark : ThemeMode.light;
  }
}
