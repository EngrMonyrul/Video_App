import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage(
      {super.key, required this.imageUrl, this.borderRadiusGeometry});

  final String imageUrl;
  final BorderRadiusGeometry? borderRadiusGeometry;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadiusGeometry ?? BorderRadius.zero,
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        placeholder: (context, url) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
