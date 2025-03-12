import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecard_app/components/custom_widgets.dart';
import 'package:ecard_app/utils/resources/images/images.dart';
import 'package:ecard_app/utils/resources/strings/strings.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});
  bool login = false;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        ),
        child: Column(
          children: [
            ClipOval(
                child: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Stack(
                  children: [
                    Positioned(
                        left: -10,
                        child: Image.asset(Images.splashImage,
                        height: 120 , width: 120 , fit: BoxFit.cover,))
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeaderBoldWidget(text: 'e', color: Theme.of(context).canvasColor, size: "24"),
                HeaderBoldWidget(text: Headlines.businessApp, color: Theme.of(context).cardColor, size: "24")
              ],
            ),
            NormalHeaderWidget(text: Headlines.splashMessage, color: Theme.of(context).cardColor, size: "12")
          ],
        )
    ),
    duration: 3000,
    splashIconSize: 500,
    backgroundColor: Theme.of(context).primaryColor,
    nextScreen:const LoginPage());
  }
}
