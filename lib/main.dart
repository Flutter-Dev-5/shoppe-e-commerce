import 'package:tf_ecommerce/SRC/exports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: AppTheme.themeMode,
      builder: (BuildContext context, ThemeMode value, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: value,
          theme: AppTheme().lightTheme(),
          darkTheme: AppTheme().darkThemeData(),
          home: CreateAccount(),
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