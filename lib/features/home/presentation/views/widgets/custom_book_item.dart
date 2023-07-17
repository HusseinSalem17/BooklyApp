import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.borderRadiusSize,
    required this.aspectRatioSize,
    required this.imageUrl,
  });

  final String imageUrl;
  final double borderRadiusSize;
  final double aspectRatioSize;
  @override
  Widget build(BuildContext context) {
    //to save the image (the aspect ration of image and be responsive)
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        //width / height
        aspectRatio: aspectRatioSize,
        //CachedNetworkImage => to cach the images and show it with good fading and handling loading and failure
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}
