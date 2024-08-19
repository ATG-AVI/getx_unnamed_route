import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text(
                "Next Screen",
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Background color
                foregroundColor: Colors.white, // Text color
              ),
              onPressed: () {
                // Add the action to navigate to the next screen
              },
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              child: Text(
                "Back to Main",
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue, // Background color
                foregroundColor: Colors.white, // Text color
              ),
              onPressed: () {
                // Navigate back and pass data if needed
                Get.back(result: 'This is from Home Screen');
              },
            ),
            SizedBox(
              height: 8,
            ),
            // Uncomment this section if you want to display arguments passed to this screen
            // Text(
            //   "${Get.arguments ?? 'No Data'}",
            //   style: TextStyle(color: Colors.green, fontSize: 20),
            // ),
          ],
        ),
      ),
    );
  }
}
