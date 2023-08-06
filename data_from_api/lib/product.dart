import 'package:http/http.dart' as http;
import 'dart:convert';

class Product {
  late final int id;
  late final String title;
  late final double price;
  late final String category;
  late final String description;
  late final String image;

  Product(this.id, this.title, this.price, this.category, this.description,
      this.image);
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(json['id'], json['title'], json['price'], json['category'],
        json['description'], json['image']);
  }
}
