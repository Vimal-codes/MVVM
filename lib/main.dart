import 'package:flutter/material.dart';
import 'package:mvvm_basic/constants/my_theme_data.dart';
import 'package:mvvm_basic/service/init_getit.dart';
import 'package:mvvm_basic/service/navigation_service.dart';
import 'package:mvvm_basic/view/screens/movie_details.dart';
import 'package:mvvm_basic/view/screens/movies_screen.dart';
import 'package:mvvm_basic/view/screens/splash_screen.dart';

void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorkey,
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: MyThemeData.ligthTheme,
      home: MoviesScreen(),
    );
  }
}
