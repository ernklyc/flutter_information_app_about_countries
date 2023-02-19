import 'package:flutter/material.dart';
import 'package:uplabs_2/pages/loginPage.dart';
import 'utility/constants/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: ThemaColors().themaColor,
          elevation: 0,
          titleTextStyle: const TextStyle(fontSize: 13, letterSpacing: 2),
          centerTitle: true,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
