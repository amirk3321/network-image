library network_image;

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String? imageUrl;
  final File? imageFile;
  final String? placeHolder;
  final BoxFit? placeHolderBoxFit;
  final BoxFit? networkImageBoxFit;
  final BoxFit? imageFileBoxFit;
  final Widget? progressIndicatorBuilder;
  final Widget? errorWidgetBuilder;
  final double? borderRadiusPlaceHolder;
  final double? borderRadiusNetworkImage;
  final double? borderRadiusImageFile;

  const NetworkImageWidget({
    Key? key,
    this.errorWidgetBuilder,
    this.imageFile,
    this.imageUrl,
    this.placeHolder,
    this.imageFileBoxFit,
    this.networkImageBoxFit,
    this.placeHolderBoxFit,
    this.progressIndicatorBuilder,
    this.borderRadiusImageFile,
    this.borderRadiusNetworkImage,
    this.borderRadiusPlaceHolder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageFile == null) {
      if (imageUrl == null || imageUrl == "") {
        return ClipRRect(
          borderRadius: BorderRadius.circular(
              borderRadiusPlaceHolder == null ? 20 : borderRadiusPlaceHolder!),
          child: Image.asset(
            placeHolder == null ? 'assets/default_profile.png' : placeHolder!,
            fit: placeHolderBoxFit,
          ),
        );
      } else {
        return ClipRRect(
          borderRadius: BorderRadius.circular(borderRadiusNetworkImage == null
              ? 20
              : borderRadiusNetworkImage!),
          child: CachedNetworkImage(
            imageUrl: "$imageUrl",
            fit: networkImageBoxFit,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                progressIndicatorBuilder == null
                    ? _loadingIndicator()
                    : progressIndicatorBuilder!,
            errorWidget: (context, url, error) => errorWidgetBuilder == null
                ? _errorWidget()
                : errorWidgetBuilder!,
          ),
        );
      }
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(
            borderRadiusImageFile == null ? 20 : borderRadiusImageFile!),
        child: Image.file(
          imageFile!,
          fit: imageFileBoxFit,
        ),
      );
    }
  }

  Widget _loadingIndicator() {
    return SizedBox(
      height: 50,
      width: 50,
      child: Image.asset("assets/loading_image.gif"),
    );
  }

  Widget _errorWidget() {
    return const Icon(Icons.error);
  }
}
