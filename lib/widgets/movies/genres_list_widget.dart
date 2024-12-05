import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/my_app_constants.dart';

class GenresListWidget extends StatelessWidget {
  const GenresListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // children: [
      //   Chip(label: Text("Comedy"))
      // ],
      children: List.generate(
          MyAppConstants.genresList.length,
          (index) => chipWidget(
              genreName: MyAppConstants.genresList[index], context: context)),
    );
  }

  Widget chipWidget(
      {required String genreName, required BuildContext context}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Theme.of(context).colorScheme.surface.withOpacity(0.2),
            border: Border.all(color: Theme.of(context).colorScheme.surface)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Text(genreName,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurface, fontSize: 14)),
        ),
      ),
    );
  }
}
