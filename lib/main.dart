import 'package:flutter/material.dart';
import 'package:kamil_apps/persentation/pages/al_quran_page.dart';
import 'package:kamil_apps/persentation/pages/home_page.dart';
import 'package:kamil_apps/persentation/pages/main_page.dart';
import 'package:kamil_apps/persentation/pages/profile_page.dart';
import 'package:kamil_apps/persentation/pages/shalat_page.dart';
import 'package:kamil_apps/persentation/pages/splash_page.dart';
import 'package:kamil_apps/persentation/providers/page_notifier.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageNotifier()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case "/splash":
              return MaterialPageRoute(builder: (_) => SplashPage());
            case MainPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => MainPage());
            case ShalatPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => ShalatPage());
            case AlQuranPage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => AlQuranPage());
            case ProfilePage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => ProfilePage());
            case HomePage.ROUTE_NAME:
              return MaterialPageRoute(builder: (_) => HomePage());
            default:
              return MaterialPageRoute(
                builder: (_) {
                  return Scaffold(
                    body: Center(
                      child: Text('Page not found :('),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
