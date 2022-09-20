import 'package:flutter/material.dart';

class ListviewSeparatedWidget extends StatelessWidget {
  ListviewSeparatedWidget({Key? key}) : super(key: key);

  final List<Color> myColor = [
    Colors.red,
    Colors.black,
    Colors.teal,
    Colors.redAccent,
  ];

  final List<int> nomor = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Separated"),
      ),
      body: ListView.separated(
        itemCount: myColor.length,
        itemBuilder: (context, index) {
          return Container(
            height: 300,
            width: 300,
            color: myColor[index],
            child: Text(
              nomor[index].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 10,
            color: Colors.black,
          );
        },
      ),
    );
  }
}
