import 'package:flutter/material.dart';
import 'package:smart_home_app/presentation/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(length: 2, child: Scaffold(body: Body()));
  }
}
