import 'package:flutter/material.dart';

class ListiviewBuilderWidget extends StatelessWidget {
  ListiviewBuilderWidget({Key? key}) : super(key: key);

  final List<Color> myColor = [
    Colors.red,
    Colors.black,
    Colors.teal,
    Colors.redAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Widgets"),
      ),
      body: ListView.builder(
        itemCount: myColor.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: 300,
            color: myColor[index],
          );
        },
      ),
    );
  }
}
