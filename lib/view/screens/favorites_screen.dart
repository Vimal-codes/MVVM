import 'package:flutter/material.dart';

import '../../constants/my_app_icons.dart';
import '../../widgets/movies/movies_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Favorite Movies")),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  MyAppIcons.delete,
                  color: Colors.red,
                )),
          ],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return MoviesWidget();
          },
        ));
  }
}
