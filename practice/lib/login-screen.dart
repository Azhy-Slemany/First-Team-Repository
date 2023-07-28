import 'package:flutter/material.dart';
import 'package:practice/rigester_screen.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'Welcome back! Glad to see you, Again!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 1),
                ),
              ),
            ),
            SizedBox(height: 40),
            //! email fild
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFFF7F8F9)),
                      color: Color(0xFFE8ECF4)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            color: Color(0xFF8391A1),
                          )),
                    ),
                  )),
            ),
            //! password fild
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFFF7F8F9)),
                      color: Color(0xFFE8ECF4)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            color: Color(0xFF8391A1),
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color.fromARGB(179, 116, 129, 158),
                          )),
                    ),
                  )),
            ),
            //! forgot password
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 18),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Color.fromARGB(153, 69, 67, 67)),
                    )),
              ),
            ),
            //! login button
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 30),
              child: MaterialButton(
                splashColor: Colors.lightBlue[300],
                height: 55,
                minWidth: 350,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => loginScreen()));
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
              height: 30,
            ),
            //! or login with
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                  ),
                )),
                Text(
                  'Or login with',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Divider(
                    thickness: 1,
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //! fb image
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: const Color.fromARGB(255, 142, 142, 144))),
                    child: Image.asset(
                      'assets/image/fb.png',
                    ),
                  ),
                  //! google image
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color.fromARGB(255, 142, 142, 144))),
                    child: Image.asset(
                      'assets/image/google.png',
                    ),
                  ),
                  //! apple id image
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Color.fromARGB(255, 142, 142, 144))),
                    child: Image.asset(
                      'assets/image/apple.png',
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20,
            ),
            Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'dont have account ? ',
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RigesterScreen()));
                  },
                  child: Text(
                    'Rigester now!',
                    style: TextStyle(fontSize: 16, color: Colors.blue[400]),
                  ),
                )
              ],
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
