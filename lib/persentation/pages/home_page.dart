import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kamil_apps/common/constants.dart';
import 'package:kamil_apps/common/date_helper.dart';

class HomePage extends StatelessWidget {
  static const ROUTE_NAME = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildWidgetHeader(),
              _buildWidgetMenu(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetMenu() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildWidgetMenuItem(
            title: "Arah Kiblat",
            imageAssets: "assets/compass.png",
            onTap: () {},
          ),
          _buildWidgetMenuItem(
            title: "Do'a",
            imageAssets: "assets/open-hands.png",
            onTap: () {},
          ),
          _buildWidgetMenuItem(
            title: "Kisah Nabi",
            imageAssets: "assets/compass.png",
            onTap: () {},
          ),
          _buildWidgetMenuItem(
            title: "Al-Ma’tsura",
            imageAssets: "assets/open-book.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildWidgetMenuItem({
    required String title,
    required String imageAssets,
    required Function onTap,
  }) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 68,
        width: 68,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              KGreenDark,
              KGreen.withOpacity(0.65),
            ],
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: kBodyText.copyWith(
                fontSize: 10,
                color: kWhite,
              ),
            ),
            Image.asset(
              imageAssets,
              width: 35,
              color: kWhite,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: margin,
        vertical: margin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Indonesia",
                style: kSubtitle.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.location_on_outlined),
            ],
          ),
          Text(
            DateHelper.changeFormatIdToDateTimeFormat(DateTime.now()),
            style: kSubtitle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 165,
            width: double.infinity,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(17),
                  child: Image.asset(
                    "assets/banner.png",
                    height: 165,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 19,
                    vertical: 19,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dhuhr",
                        style: kSubtitle.copyWith(
                          color: kWhite,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          Text(
                            "11:45",
                            style: kHeading5.copyWith(
                              color: kWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "AM",
                            style: kSubtitle.copyWith(
                              color: kWhite,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Next Pray: Asr",
                        style: kSubtitle.copyWith(
                          color: kWhite,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "2:50 PM",
                        style: kSubtitle.copyWith(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
