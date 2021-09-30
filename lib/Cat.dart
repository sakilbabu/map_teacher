import 'package:flutter/material.dart';

class Cat extends StatelessWidget {
  Cat({Key? key}) : super(key: key);
  List<String> categories = [
    'Books',
    'Electronics',
    'Fashtion',
    'Sports',
    'Kids',
  ];
  int CurrentSelected = 0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("data"),
        ),
        ListTile(
          title: Text("data"),
        ),
        ListTile(
          title: Text("data"),
        ),
      ],
    );
  }
}
