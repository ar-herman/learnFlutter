import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../widgets/item_chat.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extract Widgets"),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return ChatItem(
            imageUrl: "https://picsum.photos/id/$index/200/300",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          );
        },
      ),
    );
  }
}
