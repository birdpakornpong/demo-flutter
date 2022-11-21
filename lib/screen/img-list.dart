import 'package:flutter/material.dart';

class ImgList extends StatelessWidget {
  const ImgList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigator',
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
        home: const MyImgList());
  }
}

class MyImgList extends StatefulWidget {
  const MyImgList({Key? key}) : super(key: key);
  @override
  _MyImgListState createState() => _MyImgListState();
}

class _MyImgListState extends State<MyImgList> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bird Flutter"),
      ),
      body: Center(
        child: Column(
            // กำหนด position children in column
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                '$_counter',
              ),
              const Text(
                'Hello bird',
              ),
              const Image(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2022/10/21/08/39/cat-7536508_1280.jpg")),
              const Image(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2022/11/02/04/07/deer-7563934_1280.jpg"),
              )
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
