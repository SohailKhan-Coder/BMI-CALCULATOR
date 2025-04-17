import 'package:flutter/material.dart';

class ResultClass extends StatefulWidget {
  String resultText;
  String bmi;
  String interpretation;
  ResultClass(
      {super.key,
      required this.bmi,
      required this.interpretation,
      required this.resultText});

  @override
  State<ResultClass> createState() => _ResultClassState();
}

class _ResultClassState extends State<ResultClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        //backgroundColor: Colors.teal,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10, top: 25),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(40),
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.teal
                  : Colors.white10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Normal
                  Text(
                    widget.resultText,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.bmi,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Normal BMI range:",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "18,5 - 25 kg/m2",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      widget.interpretation,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 200,
                    color: Colors.white12,
                    child: Center(
                      child: Text(
                        "SAVE RESULT",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  Row(
                    children: [],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.teal
                  : Colors.pink,
              child: Center(
                child: Text(
                  "RE-CALCULATE YOUR BMI",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
