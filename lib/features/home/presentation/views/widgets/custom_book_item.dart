import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.borderRadiusSize,
    required this.aspectRatioSize,
  });
  final double borderRadiusSize;
  final double aspectRatioSize;
  @override
  Widget build(BuildContext context) {
    //to save the image (the aspect ration of image and be responsive)
    return AspectRatio(
      //width / height
      aspectRatio: aspectRatioSize,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadiusSize),
          color: Colors.red,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
