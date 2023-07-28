import 'package:flutter/material.dart';
import 'package:practice/login-screen.dart';
import 'package:practice/rigester_screen.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            'assets/image/img-3.png',
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/image/logo.png',
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20,
          ),
          //!Login button
          Padding(
            padding: const EdgeInsets.all(10),
            child: MaterialButton(
              splashColor: Colors.lightBlue[300],
              height: 55,
              minWidth: 350,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginScreen()));
              },
              color: Colors.black,
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          //! Register button
          Padding(
            padding: EdgeInsets.all(10),
            child: MaterialButton(
              splashColor: Colors.lightBlue[300],
              height: 55,
              minWidth: 350,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RigesterScreen()));
              },
              color: Colors.white,
              child: Text(
                'Register',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Login as guest',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue[300]),
            ),
          ),
          const Spacer(),
        ],
      )),
    );
  }
}
