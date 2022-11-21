import 'package:flutter/material.dart';
import '../model/FoodMenu.dart';

class ImgList2 extends StatefulWidget {
  const ImgList2({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ImgList2> {
  int number = 0; // create State

  // กลุ่มข้อมูล
  List<FoodMenu> menu = [
    FoodMenu(name: "กุ้งเผา", price: "300", img: 'assets/images/birth.jpg'),
    FoodMenu(name: "กระเพราหมู", price: "500", img: 'assets/images/pown.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("เลือกเมนูอาหาร"),
        ),
        body: ListView.builder(
            itemCount: menu.length,
            itemBuilder: (BuildContext context, int index) {
              FoodMenu food = menu[index];
              return ListTile(
                leading: Image.asset(food.img),
                title: Text(
                  food.name,
                  style: const TextStyle(fontSize: 30),
                ),
                subtitle: Text('ราคา ' + food.price + ' บาท'),
                onTap: () {
                  print("คุณเลือกอาหารชื่อว่า =" + food.name);
                },
              );
            }));
  }
}
