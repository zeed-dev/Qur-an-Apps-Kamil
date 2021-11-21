import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kamil_apps/common/constants.dart';
import 'package:kamil_apps/persentation/pages/main_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _startSplashScreen();
    super.initState();
  }

  void _startSplashScreen() {
    Timer(
      Duration(milliseconds: 3000),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          MainPage.ROUTE_NAME,
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KGreen,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 84,
              ),
              Text(
                "Selamat Datang di",
                style: kHeading5.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: kWhite,
                ),
              ),
              Text(
                "KAMIL Apps",
                style: kHeading5.copyWith(
                  fontWeight: FontWeight.w600,
                  color: kWhite,
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Container(
                height: 471,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 46),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 435,
                        decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset("assets/logo.png"),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: KYellow,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset("assets/arab.png"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "V.1.0.0",
                style: kHeading5.copyWith(
                  fontWeight: FontWeight.w600,
                  color: kWhite,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
