import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(title: Text("Bottom Sheet")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Go to Home"),
              onPressed: () {
                Get.to(
                  Home(),
                  // To make the screen full dialog
                  // fullscreenDialog: true,
                  // To provide animations
                  //transition: Transition.zoom,
                  // Duration for transition animation
                  // duration: Duration(milliseconds: 4000),
                  // Curve Animation
                  // curve: Curves.bounceInOut,
                );
                // Go to home screen but no option to return to previous screen
                // Get.off(Home());
                // Go to home screen and cancel all previous screens/routes
                //Get.offAll(Home());
                // Go the next screen with some data
                // Get.to(Home(),arguments:"Data from Main");
                // Go to next screen and receive data sent from home screen
                // var data=await Get.to(Home());
                // print("The Received data is $data");
              },
            ),
          ],
        )),
      ),
    );
  }
}
