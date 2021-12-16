import 'package:flutter/material.dart';
import 'extensions.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 190.height,
              width: 170.width,
              color: Colors.blue,
            ),
            Container(
              height: 250.height,
              width: 20.width,
              color: Colors.yellow,
            ),
            Container(
              height: 550.height,
              width: 90.width,
              color: Colors.red,
            ),
            Text(
              'hello'.capitalizeFirst,
              style: TextStyle(fontSize: 18.width),
            ),
            Text(
              'welcome to the world of extensions'.convertToTitle,
              style: TextStyle(fontSize: 16.width),
            ),
          ],
        ),
      ),
    );
  }
}
