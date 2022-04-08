import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final num score;
  final String name;
  const Result(this.score,this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(score.toString()),
          Text(name),
          ElevatedButton(onPressed: ()=> Navigator.pop(context), child:const Text("Back to Home"))
        ],
      ),
    );
  }
}
