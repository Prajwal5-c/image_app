import 'package:flutter/material.dart';

class MultiplicationTable extends StatefulWidget {
  const MultiplicationTable({super.key});

  @override
  State<MultiplicationTable> createState() => _MultiplicationTableState();
}

class _MultiplicationTableState extends State<MultiplicationTable> {
  TextEditingController textEditingController = TextEditingController();
  int n = 1;
  int product = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                  labelText: ("Number"), hintText: "enter number"),
            ),
            InkWell(
              onTap: () {
                n = int.parse(textEditingController.text);
                for (int i = 1; i < 10; i++) {
                  product =n*i;
                  print("$n * $i is $product");
                }
              },
              child: Container(
                height: 50,
                width: 150,
                color: Colors.blue,
                child: const Text(
                  "Submit date",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
