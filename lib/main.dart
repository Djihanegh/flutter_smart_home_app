import 'package:flutter/material.dart';

import 'config/routes.dart';
import 'presentation/home/home_screen.dart';

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
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}
