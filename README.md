# Network Image Widget

`NetworkImageWidget` make your life easy directly call me and feed me with (ImageUrl) or (File) or leave me empty I will automatically set for you default image if you want me to change pass your own using placeHolder sounds nice right use me in your project


## Usage
In your pubspec.yaml

```yaml
dependencies:
  network_image: # latest version
```
Import it
```dart
import 'package:network_image/network_image.dart';
```

Implement it

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

## Contributions

Feel free to contribute to this project.

If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/amirk3321/network-image/issues). If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/amirk3321/network-image/pulls).

## Getting Started

This project is a starting point for a Dart  [package](https://flutter.dev/developing-packages/), a library module containing code that can be shared easily across multiple Flutter or Dart projects.

For help getting started with Flutter, view our  [online documentation](https://flutter.dev/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.


## Preview

<p float="left">

  <img src="https://user-images.githubusercontent.com/10207753/188986402-26287574-91ba-4697-b1ec-c703f4c39e60.png" height="500" /> 

  <br />
</p>

### Created & Maintained By

[@AmirKhan](https://github.com/amirk3321) , Youtube : [@eTechViral](https://www.youtube.com/c/eTechViral) , Twitter  : [@AmirKhan](https://twitter.com/__amir_khan_?t=nLs3rngLRIkgDvQ7RzXaTA&s=09) , Instagram  : [@etechviral](https://www.instagram.com/etechviral/), LinkedIn : [@AmirKhan](https://www.linkedin.com/in/amir-khan-119542b3)
