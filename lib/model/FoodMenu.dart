// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FoodMenu {
  String name;
  String price;
  String img;
  FoodMenu({
    required this.name,
    required this.price,
    required this.img,
  });

  FoodMenu copyWith({
    String? name,
    String? price,
    String? img,
  }) {
    return FoodMenu(
      name: name ?? this.name,
      price: price ?? this.price,
      img: img ?? this.img,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'img': img,
    };
  }

  factory FoodMenu.fromMap(Map<String, dynamic> map) {
    return FoodMenu(
      name: map['name'] as String,
      price: map['price'] as String,
      img: map['img'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FoodMenu.fromJson(String source) =>
      FoodMenu.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FoodMenu(name: $name, price: $price, img: $img)';

  @override
  bool operator ==(covariant FoodMenu other) {
    if (identical(this, other)) return true;

    return other.name == name && other.price == price && other.img == img;
  }

  @override
  int get hashCode => name.hashCode ^ price.hashCode ^ img.hashCode;
}
