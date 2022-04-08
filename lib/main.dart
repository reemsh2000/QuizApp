import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

void main() => runApp(const Welcome());

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    var name;
    final nameController = TextEditingController();

    return MaterialApp(
        home: Builder(
          builder: (context) {
            return Scaffold(
      body: Column(children: <Widget>[
            SizedBox(
                height: 300,
                child: Image.network(
                    "https://media.istockphoto.com/vectors/quiz-time-logo-with-clock-concept-of-questionnaire-show-sing-quiz-vector-id1301414720?k=20&m=1301414720&s=170667a&w=0&h=F4f-wNSC_Hq3cxEyGKZP09QCkUMVf_ozna3Mg32H-c4=")),
            const Text(
              "It's Quiz time !",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              width: 240,
              height: 35,
              child: TextField(
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter your name to start',
                ),
                controller: nameController,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Quiz(nameController.text))),
                child: const Text("Let's Start"))
      ]),
    );
          }
        ));
  }
}
