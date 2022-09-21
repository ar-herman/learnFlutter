import 'dart:math';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    List<Product> dummyData = List.generate(100, (index) {
      return Product(
        imageUrl: "https://picsum.photos/id/$index/200",
        judul: faker.food.restaurant(),
        harga: 10000 + Random().nextInt(100000),
        deskripsi: faker.lorem.sentence(),
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("MarketPlace"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: dummyData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return GridTile(
            footer: Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Column(
                children: [
                  Text(
                    dummyData[index].judul,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                  Text(
                    "Rp ${dummyData[index].harga}",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    dummyData[index].deskripsi,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            child: Image.network(
              dummyData[index].imageUrl,
            ),
          );
        },
      ),
    );
  }
}
