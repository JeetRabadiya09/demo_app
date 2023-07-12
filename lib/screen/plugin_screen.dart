import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class PluginScreen extends StatefulWidget {
  const PluginScreen({Key? key}) : super(key: key);

  @override
  State<PluginScreen> createState() => _PluginScreenState();
}

class _PluginScreenState extends State<PluginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      ));
                },
              );
            }).toList(),
          ),
          ImageView360(
            key: UniqueKey(),
            imageList: imageList,
            autoRotate: true, //Optional
            rotationCount: 2, //Optional
            rotationDirection: RotationDirection.anticlockwise, //Optional
            frameChangeDuration: Duration(milliseconds: 50), //Optional
            swipeSensitivity: 2, //Optional
            allowSwipeToRotate: true, //Optional
            onImageIndexChanged: (currentImageIndex) {
              //Optional
              print("currentImageIndex: $currentImageIndex");
            },
          )
        ],
      ),
    );
  }
}
