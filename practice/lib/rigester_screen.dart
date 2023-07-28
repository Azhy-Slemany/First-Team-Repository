import 'package:flutter/material.dart';

class RigesterScreen extends StatefulWidget {
  const RigesterScreen({super.key});

  @override
  State<RigesterScreen> createState() => _RigesterScreenState();
}

class _RigesterScreenState extends State<RigesterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }
}
