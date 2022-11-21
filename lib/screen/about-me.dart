import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Me'),
          actions: [
            GestureDetector(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.add, size: 40),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FormScreen();
                  }),
                );
              },
            )
          ],
        ),
        body: GestureDetector(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return FormScreen();
              }),
            );
          },
          child: const Center(
              child: Text(
            'แตะหน้าจอสองครั้ง',
            style: TextStyle(
              fontSize: 30,
            ),
          )),
        ));
  }
}

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Screen'),
        ),
        body: GestureDetector(
            onPanUpdate: (details) {
              if (details.delta.dx >= 15 || details.delta.dx <= -15) {
                print(details.delta.dx);
                Navigator.pop(context);
              }
            },
            child: const Center(
              child: Text(
                'ลากนิ้วเพื่อเปลี่ยนหน้าจอ',
                style: TextStyle(fontSize: 30),
              ),
            )));
  }
}
