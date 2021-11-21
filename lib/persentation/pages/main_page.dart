import 'package:flutter/material.dart';
import 'package:kamil_apps/common/constants.dart';
import 'package:kamil_apps/persentation/pages/al_quran_page.dart';
import 'package:kamil_apps/persentation/pages/home_page.dart';
import 'package:kamil_apps/persentation/pages/profile_page.dart';
import 'package:kamil_apps/persentation/pages/shalat_page.dart';
import 'package:kamil_apps/persentation/providers/page_notifier.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  static const ROUTE_NAME = "/main-page";

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _buildBottomNavBar(PageNotifier pageNotifier) {
    return BottomNavigationBar(
      selectedItemColor: KGreen,
      unselectedItemColor: kGreySecondary,
      currentIndex: pageNotifier.currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        pageNotifier.currentIndex = index;
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.mosque),
          label: "Shalat",
        ),
        BottomNavigationBarItem(
          icon: Icon(MdiIcons.bookPlusOutline),
          label: "Al-Qur'an",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Profile",
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    PageNotifier _pageNotifier = Provider.of<PageNotifier>(context);

    List _screen = [
      HomePage(),
      ShalatPage(),
      AlQuranPage(),
      ProfilePage(),
    ];

    return Scaffold(
      body: _screen[_pageNotifier.currentIndex],
      bottomNavigationBar: _buildBottomNavBar(_pageNotifier),
    );
  }
}
