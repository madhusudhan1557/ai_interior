import 'package:flutter/material.dart';

class Get3dObjects extends StatelessWidget {
  const Get3dObjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        margin: const EdgeInsets.only(top: 50),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 6 / 8,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: const [
            Card(
              child: Center(
                child: Text("Your 3d Image will be here"),
              ),
            ),
            Card(
              child: Center(
                child: Text("Your 3d Image will be here"),
              ),
            ),
            Card(
              child: Center(
                child: Text("Your 3d Image will be here"),
              ),
            ),
            Card(
              child: Center(
                child: Text("Your 3d Image will be here"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
