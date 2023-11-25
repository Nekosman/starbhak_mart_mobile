import 'package:asesmen_starbhak_mart/nav.dart';
import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: FlutterSplashScreen.fadeIn(
          backgroundColor: Colors.white,
          onInit: () {
            debugPrint("On Init");
          },
          onEnd: () {
            debugPrint("On End");
          },
          childWidget: SizedBox(
            height: 400,
            width: 400,
            child: Image.asset("assets/starbhak-mart-high-resolution-logo.png"),
          ),
          onAnimationEnd: () => debugPrint("On Fade In End"),
          nextScreen: BottomNavBar(),
        ),
),
    );
  }
}
