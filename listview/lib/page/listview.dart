import 'package:flutter/material.dart';

class ListiviewWidget extends StatelessWidget {
  ListiviewWidget({Key? key}) : super(key: key);

  final List<Widget> myList = [
    Container(
      height: 300,
      width: 300,
      color: Colors.red,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.green,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.blue,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.amber,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Widgets"),
      ),
      body: ListView(
        children: myList,
      ),
    );
  }
}
