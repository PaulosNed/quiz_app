import 'package:flutter/material.dart';
import 'package:quiz_app/model/Question.dart';

class QuizApp extends StatefulWidget {
  QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  bool _answer = true;
  int _index = 0;
  List content = [
    Question.name(
        "The U.S. Declaration of Independence was adopted in 1776.", true),
    Question.name("The Supreme law of the land is the Constitution.", true),
    Question.name(
        "The two rights in the Declaration of Independence are:"
        "  \n Life  "
        "  \n Pursuit of happiness.",
        true),
    Question.name("The (U.S.) Constitution has 26 Amendments.", false),
    Question.name(
        "Freedom of religion means:\nYou can practice any religion, "
        "or not practice a religion.",
        true),
    Question.name("Journalist is one branch or part of the government.", false),
    Question.name("The Congress does not make federal laws.", false),
    Question.name("There are 100 U.S. Senators.", true),
    Question.name("We elect a U.S. Senator for 4 years.", false), //6
    Question.name("We elect a U.S. Representative for 2 years", true),
    Question.name(
        "A U.S. Senator represents all people of the United States", false),
    Question.name("We vote for President in January.", false),
    Question.name("Who vetoes bills is the President.", true),
    Question.name("The Constitution was written in 1787.", true),
    Question.name('George Bush is the \ " Father of Our Country " \.', false)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("True Citizen"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      backgroundColor: Colors.blueGrey,
      body: Builder(builder: (context) {
        return Container(
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
                  content[_index].question,
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
                        if (content[_index].isCorrect) {
                          final snackbar1 = SnackBar(
                            duration: Duration(milliseconds: 500),
                            content: Text(
                              "that is correct",
                              // style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color.fromARGB(255, 18, 255, 26),
                          );
                          Scaffold.of(context).showSnackBar(snackbar1);
                        } else {
                          final snackbar2 = SnackBar(
                            duration: Duration(milliseconds: 500),
                            content: Text(
                              "that is incorrect",
                              // style: TextStyle(
                              //   color: Colors.white,
                              // ),
                            ),
                            backgroundColor: Color.fromARGB(255, 255, 17, 0),
                          );

                          Scaffold.of(context).showSnackBar(snackbar2);
                        }

                        setState(() {
                          _index = (_index + 1) % (content.length);
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
                        if (content[_index].isCorrect == false) {
                          final snackbar1 = SnackBar(
                            content: Text(
                              "that is correct",
                              // style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Color.fromARGB(255, 18, 255, 26),
                            duration: Duration(milliseconds: 500),
                          );
                          Scaffold.of(context).showSnackBar(snackbar1);
                        } else {
                          final snackbar2 = SnackBar(
                            content: Text(
                              "that is incorrect",
                              // style: TextStyle(
                              //   color: Colors.white,
                              // ),
                            ),
                            backgroundColor: Color.fromARGB(255, 255, 17, 0),
                            duration: Duration(milliseconds: 500),
                          );

                          Scaffold.of(context).showSnackBar(snackbar2);
                        }
                        setState(() {
                          _index = (_index + 1) % (content.length);
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
                          if (_index < content.length - 1) {
                            _index++;
                          } else {
                            _index = 0;
                          }
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
        );
      }),
    );
  }
}
