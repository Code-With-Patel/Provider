import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.indigo,
          Colors.pink,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              radius: 150,
              backgroundImage: AssetImage("assets/lady.jpg"),
            ),
            Container(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Luna Thomson",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "Age : 26",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                  Text(
                    "Lived at New York",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
