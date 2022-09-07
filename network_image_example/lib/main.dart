import 'dart:io';

import 'package:flutter/material.dart';
import 'package:network_image/network_image.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const String _networkImage =
      "https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png";

  static const String _placeHolder = "assets/image.jpeg";

  final File _imageFile = File("add_path");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Network Image Example',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              NetworkImageWidget(
                borderRadius: 50,
                imageUrl: _networkImage,
                errorWidgetBuilder: Icon(Icons.error),
                boxFit: BoxFit.cover,
                placeHolder: _placeHolder,
                progressIndicatorBuilder: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
