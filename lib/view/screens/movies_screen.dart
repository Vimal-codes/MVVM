import 'package:flutter/material.dart';
import 'package:mvvm_basic/constants/my_app_constants.dart';
import 'package:mvvm_basic/constants/my_app_icons.dart';
import 'package:mvvm_basic/widgets/cached_image.dart';

import '../../service/init_getit.dart';
import '../../service/navigation_service.dart';
import '../../widgets/movies/movies_widget.dart';
import 'favorites_screen.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Popular Movies"),
          actions: [
            IconButton(
                onPressed: () {
                  getIt<NavigationService>().navigate(const FavoritesScreen());
                  // getIt<NavigationService>().showDailog(Container(color: Colors.grey,));
                  // getIt<NavigationService>().showSnackBar();
                },
                icon: const Icon(
                  MyAppIcons.favoriteRounded,
                  color: Colors.red,
                )),
            IconButton(onPressed: () {

            }, icon: const Icon(MyAppIcons.darkMode))
          ],
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return const Padding(
              padding: EdgeInsets.all(8.0),
              child: MoviesWidget(),
            );
          },
        ));
  }
}
