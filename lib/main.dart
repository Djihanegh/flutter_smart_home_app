import 'package:flutter/material.dart';

import 'config/routes.dart';
import 'presentation/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      title: '',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme:
              const AppBarTheme(backgroundColor: Colors.white, elevation: 0)),
      home: const Home(),
    );
  }
}
