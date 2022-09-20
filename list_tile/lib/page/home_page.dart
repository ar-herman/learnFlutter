import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(),
            title: Text("Ardiyansah Herman"),
            subtitle: Text("Flutter Dev"),
            trailing: Text("10 : 00"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Ardiyansah Herman"),
            subtitle: Text("Flutter Dev"),
            trailing: Text("10 : 00"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Ardiyansah Herman"),
            subtitle: Text("Flutter Dev"),
            trailing: Text("10 : 00"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Ardiyansah Herman"),
            subtitle: Text("Flutter Dev"),
            trailing: Text("10 : 00"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Ardiyansah Herman"),
            subtitle: Text("Flutter Dev"),
            trailing: Text("10 : 00"),
          ),
          ListTile(
            leading: CircleAvatar(),
            title: Text("Ardiyansah Herman"),
            subtitle: Text("Flutter Dev"),
            trailing: Text("10 : 00"),
          ),
        ],
      ),
    );
  }
}
