// import 'package:demofilee/apii.dart';

import 'package:find/bottow.dart';
import 'package:find/signup.dart';
import 'package:find/tabbar.dart';
import 'package:find/third.dart';
import 'package:find/travel.dart';
import 'package:flutter/material.dart';
import 'package:find/second.dart';
// import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: login()));
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailcontroller = new TextEditingController();
    TextEditingController _passwordcontroller = new TextEditingController();

    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 80),
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 80),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email',
                            contentPadding: const EdgeInsets.all(16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        width: double.infinity,
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            contentPadding: const EdgeInsets.all(16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => bottom(),
                      ),
                    );
                    // TODO: Validate and log in the user
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 48, vertical: 16),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 69, top: 10),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => signupscreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: Colors.blue),
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
