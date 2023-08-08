// import 'package:flutter/material.dart';
//
// class AnimationScreen extends StatefulWidget {
//   const AnimationScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AnimationScreen> createState() => _AnimationScreenState();
// }
//
// class _AnimationScreenState extends State<AnimationScreen> {
//   Animation<Offset> animation;
//   AnimationController animationController;
//   animationController.forward();
//   animationController.reverse();
//   double bottomMargin = 0;
//
//   @override
//   void initState() {
//     super.initState();
//
//     animationController =
//         AnimationController(vsync: this, duration: const Duration(seconds: 1));
//     animation = Tween<Offset>(begin: const Offset(0, 0), end: const Offset(0, -1.2))
//         .animate(animationController);
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           SlideTransition(
//               position: animation,
//               child: Container(
//                 height: 350,
//                 width: 250,
//                 decoration: const BoxDecoration(
//                     image: DecorationImage(
//                   image: AssetImage('assets/images/s2.png'),
//                 )),
//               )),
//
//           FloatingActionButton(
//             onPressed: () {
//               animationController.forward();
//             },
//             child: const Text(
//               'Launch',
//               style:
//               TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//             ),
//             // color: Colors.red,
//             // textColor: Colors.white,
//             shape: const BeveledRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15))),
//           ),
//           FloatingActionButton(
//             onPressed: () {
//               if (animationController.isCompleted) {
//                 animationController.reverse();
//               }
//             },
//             child: Text(
//               'Abort',
//               style:
//               TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
//             ),
//             // color: Colors.red,
//             // textColor: Colors.white,
//             shape: BeveledRectangleBorder(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(15),
//                     bottomRight: Radius.circular(15))),
//           )
//           // Stack(
//           //   alignment: AlignmentDirectional.bottomCenter,
//           //   children: [
//           //     // Night sky image here
//           //     AnimatedContainer(
//           //       duration: Duration(milliseconds: 500),
//           //       height: 350,
//           //       width: 250,
//           //       margin: EdgeInsets.only(bottom: bottomMargin),
//           //       child: Image.asset('assets/images/s6.png'),
//           //     ),
//           //   ],
//           // ),
//         ],
//       ),
//     );
//   }
// }
