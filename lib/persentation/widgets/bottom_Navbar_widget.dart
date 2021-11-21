import 'package:flutter/material.dart';
import 'package:kamil_apps/common/constants.dart';
import 'package:kamil_apps/persentation/providers/page_notifier.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
    required this.pageNotifier,
  }) : super(key: key);

  final PageNotifier pageNotifier;

  @override
  Widget build(BuildContext context) {
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
}
