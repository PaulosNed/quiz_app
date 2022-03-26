import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool _answer = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "../../images/flag.png",
                width: 256,
                height: 256,
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Colors.grey, width: 0.5, style: BorderStyle.solid),
              ),
              child: Center(
                  child: Text(
                "questions will be in here...",
                style: TextStyle(color: Color.fromARGB(213, 255, 255, 255)),
              )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 40, 15, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _answer = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 80,
                      height: 30,
                      decoration:
                          BoxDecoration(color: Colors.blueGrey.shade900),
                      child: Center(
                          child: Text(
                        "TRUE",
                        style: TextStyle(
                            color: Color.fromARGB(213, 255, 255, 255)),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _answer = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 80,
                      height: 30,
                      decoration:
                          BoxDecoration(color: Colors.blueGrey.shade900),
                      child: Center(
                        child: Text(
                          "FALSE",
                          style: TextStyle(
                              color: Color.fromARGB(213, 255, 255, 255)),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _answer = true;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      width: 80,
                      height: 30,
                      decoration:
                          BoxDecoration(color: Colors.blueGrey.shade900),
                      child: Center(
                          child: Icon(
                        Icons.skip_next,
                        color: Color.fromARGB(213, 255, 255, 255),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
