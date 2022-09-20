import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Ardiyansah",
      "Age": 30,
      "FavColor": [
        "Black",
        "Red",
        "Amber",
        "White",
        "Red",
        "Green",
        "Green",
        "Teal",
        "Yellow"
      ],
    },
    {
      "Name": "Yusuf",
      "Age": 29,
      "FavColor": [
        "White",
        "Red",
        "Green",
        "Black",
        "Red",
        "Amber",
        "Green",
        "Teal",
        "Yellow"
      ],
    },
    {
      "Name": "Rangga",
      "Age": 25,
      "FavColor": [
        "Green",
        "Teal",
        "Yellow",
        "White",
        "Red",
        "Green",
        "Black",
        "Red",
        "Amber"
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ID Apps",
        ),
      ),
      body: ListView(
        children: myList.map((data) {
          print(data["FavColor"]);

          final List myFavColor = data["FavColor"];
          return Card(
            margin: const EdgeInsets.all(20),
            color: Colors.grey,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name : ${data['Name']}",
                          ),
                          Text(
                            "Age : ${data['Age']}",
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: myFavColor.map((color) {
                        return Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 8,
                          ),
                          color: Colors.amber,
                          child: Text(color),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
