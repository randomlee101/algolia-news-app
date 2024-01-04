import 'package:algolia_news_app/service_locator.dart';
import 'package:algolia_news_app/ui/screens/home.dart';
import 'package:flutter/material.dart';

main()
{
  serviceLocator();
  runApp(const MyApp());
}

GlobalKey<NavigatorState> nav = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: nav,
      title: "Algolia News App",
      home: const Home(),
    );
  }
}
