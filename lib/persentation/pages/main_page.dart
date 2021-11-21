import 'package:flutter/material.dart';
import 'package:kamil_apps/persentation/pages/al_quran_page.dart';
import 'package:kamil_apps/persentation/pages/home_page.dart';
import 'package:kamil_apps/persentation/pages/profile_page.dart';
import 'package:kamil_apps/persentation/pages/shalat_page.dart';
import 'package:kamil_apps/persentation/providers/page_notifier.dart';
import 'package:kamil_apps/persentation/widgets/bottom_Navbar_widget.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  static const ROUTE_NAME = "/main-page";

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      bottomNavigationBar: BottomNavigationBarWidget(
        pageNotifier: _pageNotifier,
      ),
    );
  }
}
