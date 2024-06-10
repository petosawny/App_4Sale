// import 'package:code/view/Home_4sale/LayoutScreen_.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:animated_splash_screen/animated_splash_screen.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//
//     return AnimatedSplashScreen(
//       centered: true,
//       duration: 3000,
//
//       splash:  Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Image.asset("assets/icons/logo.png",
//                 height: MediaQuery.of(context).size.height*.1,
//                 width: MediaQuery.of(context).size.width*.5,
//                 ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height*.4,
//               ),
//               Column(
//                 children: [
//                   Divider(
//                     color: Colors.white,
//                     thickness: 4,
//                     indent: MediaQuery.of(context).size.height*.22,
//                     endIndent: MediaQuery.of(context).size.height*.22,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//
//       ),
//       nextScreen: LayoutScreen(),
//       splashTransition: SplashTransition.fadeTransition,
//       backgroundColor: CupertinoColors.activeBlue,
//
//     );
//   }
// }




import 'package:code/controller/Splash_Screen_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    SplashScreenViewModel splashScreenViewModel =
    Get.put(SplashScreenViewModel());
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        fit: StackFit.expand,
        children: [
           Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  color: Colors.white,
                  thickness: 4,
                  indent: MediaQuery.of(context).size.height*.22,
                  endIndent: MediaQuery.of(context).size.height*.22,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.05,
                )
              ],
            ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              AnimatedOpacity(
                opacity: !animate ? 1 : 0,
                duration: Duration(seconds: 1),
                child: Image.asset(
                  'assets/icons/logo.png',
                  width: splashScreenViewModel.animation.value * 700,
                  height: splashScreenViewModel.animation.value * 700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


