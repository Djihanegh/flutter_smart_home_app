import 'package:flutter/material.dart';
import '../../utils/size_config.dart';
import '../schedule/schedule_screen.dart';
import '../widgets/bottom_nav_bar.dart';
import 'home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String routeName = "/home";

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int navBarIndex = 0;

  List<Widget> pages = [
    const HomeScreen(),
    const ScheduleScreen(),
    const HomeScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
        bottomNavigationBar: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            height: 60,
            child: Row(
              children: [
                BottomNavBarItem(
                  icon: Icons.home,
                  title: "Home",
                  index: 0,
                  onPressed: () => _onPressed(0),
                  navBarIndex: navBarIndex,
                ),
                Container(
                  height: SizeConfig.screenHeight! * 0.04,
                  width: 1,
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.5)),
                ),
                BottomNavBarItem(
                  icon: Icons.alarm,
                  index: 1,
                  onPressed: () => _onPressed(1),
                  navBarIndex: navBarIndex,
                  title: "Schedule",
                ),
                Container(
                  height: SizeConfig.screenHeight! * 0.04,
                  width: 1,
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.5)),
                ),
                BottomNavBarItem(
                  icon: Icons.person,
                  index: 2,
                  onPressed: () => _onPressed(2),
                  navBarIndex: navBarIndex,
                  title: "Profile",
                ),
              ],
            )),
        body: pages.elementAt(navBarIndex));
  }

  void _onPressed(int index) {
    setState(() {
      navBarIndex = index;
    });
  }
}
