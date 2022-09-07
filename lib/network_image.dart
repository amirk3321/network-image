library network_image;

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NetworkImageWidget extends StatelessWidget {
  final String? imageUrl;
  final File? imageFile;
  final String? placeHolder;
  final BoxFit? boxFit;
  final Widget? progressIndicatorBuilder;
  final Widget? errorWidgetBuilder;
  final double? borderRadius;
  const NetworkImageWidget(
      {Key? key,
      this.errorWidgetBuilder,
      this.imageFile,
      this.imageUrl,
      this.placeHolder,
      this.boxFit,
      this.progressIndicatorBuilder,this.borderRadius,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageFile == null) {
      if (imageUrl == null || imageUrl == "") {
        return ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius==null?20:borderRadius!),
          child: Image.asset(
            placeHolder == null ? 'assets/default_profile.png' : placeHolder!,
            fit: boxFit,
          ),
        );
      } else {
        return ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius==null?20:borderRadius!),
          child: CachedNetworkImage(
            imageUrl: "$imageUrl",
            fit: boxFit,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                progressIndicatorBuilder == null
                    ? _loadingIndicator()
                    : progressIndicatorBuilder!,
            errorWidget: (context, url, error) => errorWidgetBuilder==null?_errorWidget():errorWidgetBuilder!,
          ),
        );
      }
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius==null?20:borderRadius!),
        child: Image.file(
          imageFile!,
          fit: BoxFit.cover,
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
