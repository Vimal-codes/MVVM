import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_basic/constants/my_app_icons.dart';

class CachedWidget extends StatelessWidget {
  const CachedWidget(
      {super.key,
      required this.imgUrl,
      this.imgHeightt,
      this.imgWidth,
      this.boxFit});

  final String imgUrl;
  final double? imgHeightt;
  final double? imgWidth;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return CachedNetworkImage(
      height: imgHeightt ?? size.width * 0.3,
      width: imgWidth ?? size.width * 0.2,
      imageUrl: imgUrl,
      fit: boxFit ?? BoxFit.cover,
      errorWidget: (context, url, error) => const Icon(MyAppIcons.error),
    );
  }
}
