import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final num score;
  final String name;
  const Result(this.score, this.name);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Image.network(
                  'https://static.vecteezy.com/system/resources/thumbnails/003/019/310/small/young-girl-studying-at-her-room-concept-free-vector.jpg',
                  fit: BoxFit.cover),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              " Welcom $name !",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Your score is : ${score.toString()}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Back to Home")),
          ],
        ),
      ),
    ));
  }
}
