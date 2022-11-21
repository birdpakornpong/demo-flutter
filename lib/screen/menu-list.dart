import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final List<String> myList = [
    "Neymar",
    "Ronaldo",
    "Messi",
    "Pele",
    "Chanatrip",
    "kaka",
    "sahra"
  ];

  List<Widget> mapWidgetList() {
    return myList.map((item) {
      return Material(
        elevation: 20,
        child: Padding(
          padding: const EdgeInsets.all(60),
          child: Text(
            item,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Menu List',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Student'),
          ),
          body: ListView(children: mapWidgetList()),
        ));
  }
}
