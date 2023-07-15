import 'package:flutter/material.dart';
import 'package:lightbox/lightbox.dart';

class ImageTwo extends StatefulWidget {
  const ImageTwo({Key? key}) : super(key: key);

  @override
  State<ImageTwo> createState() => _ImageTwoState();
}

// List<Map<String, dynamic>> imageList = [
//   {
//     "image": "assets/images/list1.png",
//   },
//   {
//     "image": "assets/images/list2.png",
//   },
//   {
//     "image": "assets/images/list3.png",
//   },
//   {
//     "image": "assets/images/list4.png",
//   },
// ];

class _ImageTwoState extends State<ImageTwo> {
  final List<String> imageList = [
    "assets/images/s2.png",
    "assets/images/s3.png",
    "assets/images/s4.png",
    "assets/images/s5.png",
    "assets/images/s6.png",
  ];
  final List<String> imagesAsset = [
    "assets/images/list1.png",
    "assets/images/list2.png",
    "assets/images/list3.png",
    "assets/images/list4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                physics: AlwaysScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(width: 10.0),
                scrollDirection: Axis.vertical,
                itemCount: imageList.length,
                itemBuilder: (context, position) {
                  return GestureDetector(
                    child: Container(
                        height: 200,
                        width: 200,
                        child: Image.asset(
                          imageList[position],
                          fit: BoxFit.cover,
                        )),
                    onTap: () {
                      Navigator.push(
                          context,
                          LightBoxRoute(
                              builder: (BuildContext context) {
                                return LightBox(
                                  images: imageList,
                                  initialIndex: position,
                                  imageType: ImageType.ASSET,
                                );
                              },
                              dismissible: false));
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
