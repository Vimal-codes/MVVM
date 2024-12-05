import 'package:flutter/material.dart';
import 'package:mvvm_basic/constants/my_theme_data.dart';
import 'package:mvvm_basic/view/screens/favorites_screen.dart';
import 'package:mvvm_basic/view/screens/movies_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: MyThemeData.ligthTheme,
      home: FavoritesScreen(),
    );
  }
}
