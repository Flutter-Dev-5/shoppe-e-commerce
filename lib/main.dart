import 'package:tf_ecommerce/SRC/Application/Utils/Extensions/responsive_extension.dart';
import 'package:tf_ecommerce/SRC/Data/app_data/data.dart';
import 'package:tf_ecommerce/SRC/exports.dart';

void main() {
  Data().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryManager().initialize(context);
    return ValueListenableBuilder(
      valueListenable: AppTheme.themeMode,
      builder: (BuildContext context, ThemeMode value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: value,
          theme: AppTheme().lightTheme(),
          darkTheme: AppTheme().darkThemeData(),
          home: const Splashscreen(),
          // home: SizedBox(
          //   height: 200,
          //   child: VoucherContainer(),
          // ),
          // TestHome()
          // const SetupNewPassword(),
        );
      },
    );
  }
}
