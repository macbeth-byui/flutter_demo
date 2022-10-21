import 'package:flutter/material.dart';

class DataListWidget extends StatelessWidget {
  final List<int> data; // final because stateless

  const DataListWidget({
    super.key,
    required this.data}); // must receive numbers from parent

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount : data.length,
        prototypeItem: ListTile(
          title: Text("${data.first}"),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${data[index]}"),
          );
        },
      ),
    );
  }
}
