import 'dart:convert';
import 'package:data_from_api/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Product> futureProduct;
  Future<Product> fetchProduct() async {
    final response =
        await http.get(Uri.parse('https://fakestoreapi.com/products/1'));

    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('The Data can not fetch');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureProduct = fetchProduct();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Get Data from Api'),
          centerTitle: true,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(child: Text('Below is an image from fakestoreapi')),
            SizedBox(
              height: 20,
            ),
            Center(
              child: FutureBuilder<Product>(
                  future: futureProduct,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.data!.title);
                    } else if (snapshot.hasError) {
                      return Text('The Image data can not fetch');
                    }
                    return const CircularProgressIndicator();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
