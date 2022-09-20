import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String data = "Belum ada Input";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dialog Widgets",
        ),
      ),
      body: Center(
        child: Text(
          data,
          style: const TextStyle(
            fontSize: 35,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("CONFIRM"),
                content: const Text(
                  "Are you sure to delete this item ?",
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        data = "False";
                      });
                      Navigator.of(context).pop(false);
                    },
                    child: const Text("No"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        data = "TRUE";
                      });
                      Navigator.of(context).pop(true);
                    },
                    child: const Text("Yes"),
                  ),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: const Icon(
          Icons.delete,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
