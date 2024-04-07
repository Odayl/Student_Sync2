import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'About.dart';
import 'ContactUs.dart';
import 'Disconnect.dart';
import 'HomePage.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {


  final _controller = PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens(){
    return [
      const HomePage(),
      const ContactUs(),
      const About(),
      const Disconnect(),


    ];

  }
  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.phone),
        title: ("Contact Us"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.exclamationmark_circle_fill),
        title: ("About"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.arrow_right_square_fill),
        title: ("Disconnect"),
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,




      ),
    ];
  }

  @override
  Widget build(BuildContext context) {



    return PersistentTabView(context,
      screens: _buildScreens(),
      items: navBarsItems(),
      controller: _controller,
      navBarStyle: NavBarStyle.style1,
      popAllScreensOnTapOfSelectedTab: true,
   );
  }
}
