import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UnDraw(
            color: Colors.red,
            illustration: UnDrawIllustration.mobile_application,
            placeholder: const Text(
                "Illustration is loading..."), //optional, default is the CircularProgressIndicator().
            errorWidget: const Icon(Icons.error_outline,
                color: Colors.red,
                size:
                    50), //optional, default is the Text('Could not load illustration!').
          ),
        ],
      ),
    );
  }
}
