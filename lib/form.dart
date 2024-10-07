// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController textEditingController = TextEditingController();
  TextEditingController textEditingController1 = TextEditingController();
  double frist = 0;
  double second = 0;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      child: Column(children: [
        TextFormField(
          controller: textEditingController,
          decoration: InputDecoration(
              label: Text("frist number"), hintText: "frist number"),
        ),
        TextFormField(
          controller: textEditingController1,
          decoration: InputDecoration(
              label: Text("Second number"), hintText: "second number"),
        ),
        Row(children: [
          InkWell(
            onTap: () {
              print("textEditingController.text");
              print("textEditingController1.text");
              frist = double.parse(textEditingController.text);
              second = double.parse(textEditingController1.text);

              setState(() {
                result = frist + second;
              });
            },
            child: Container(
              height: 50,
              width: 150,
              margin: EdgeInsets.only(
                top: 40,
                left: 40,
              ),
              color: Colors.blue,
              child: const Row(
                children: [
                  Text(
                    "Add",
                                   style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                
                ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("textEditingController.text");
              print("textEditingController1.text");
              frist = double.parse(textEditingController.text);
              second = double.parse(textEditingController1.text);

              setState(() {
                result = frist - second;
              });
            },
            child: Container(
              height: 50,
              width: 150,
              margin: EdgeInsets.only(
                top: 40,
                left: 40,
              ),
              color: Colors.blue,
              child: const Row(
                children: [
                  Text(
                    "substract",
                                    style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("textEditingController.text");
              print("textEditingController1.text");
              frist = double.parse(textEditingController.text);
              second = double.parse(textEditingController1.text);

              setState(() {
                result = frist * second;
              });
            },
            child: Container(
              height: 50,
              width: 150,
              margin: EdgeInsets.only(
                top: 40,
                left: 40,
              ),
              color: Colors.blue,
              child: const Row(
                children: [
                  Text(
                    "Product",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              print("textEditingController.text");
              print("textEditingController1.text");
              frist = double.parse(textEditingController.text);
              second = double.parse(textEditingController1.text);

              setState(() {
                result = frist / second;
              });
            },
            child: Container(
              height: 50,
              width: 150,
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: 40,
                left: 40,
              ),
              color: Colors.blue,
              child: Text(
                "Division",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: 24,
        ),
        Text(
          "Result: $result",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
      ]),
    ));
  }
}
