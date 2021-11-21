import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  static const ROUTE_NAME = "/profile";

  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Profile Page"),
      ),
    );
  }
}
