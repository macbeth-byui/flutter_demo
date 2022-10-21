import 'package:flutter/material.dart';

import 'DataListWidget.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => MainPageState();
}

class MainPageState extends State<MainPage> {

  List<int> numbers = [1,2,3,4,5];

  void addEven() {
    setState(() {
      numbers.add(2);
    });
  }

  void addOdd() {
    setState(() {
      numbers.add(3);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("List Manager"),
      ),
      body: Column(
        children: [
          Expanded(
            child: DataListWidget(data:numbers),
          ),
          ButtonBar(
            mainAxisSize: MainAxisSize.min, // this will take space as minimum as posible(to center)
            children: [
              TextButton(
                onPressed: addEven,

                style: TextButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.lightBlueAccent),
                child: const Text('Add Even'),
              ),
              TextButton(
                onPressed: addOdd,
                style: TextButton.styleFrom(
                    elevation: 4,
                    backgroundColor: Colors.lightBlueAccent),
                child: const Text('Add Odd'),
              ),
            ],
          ),
        ]
      )
    );
  }
}