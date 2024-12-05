import 'package:flutter/material.dart';
import 'package:mvvm_basic/constants/my_app_constants.dart';
import 'package:mvvm_basic/constants/my_app_icons.dart';
import 'package:mvvm_basic/widgets/cached_image.dart';

import '../../widgets/movies/movies_widget.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Popular Movies"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  MyAppIcons.favoriteRounded,
                  color: Colors.red,
                )),
            IconButton(onPressed: () {}, icon: Icon(MyAppIcons.darkMode))
          ],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: MoviesWidget(),
            );
          },
        ));
  }
}
