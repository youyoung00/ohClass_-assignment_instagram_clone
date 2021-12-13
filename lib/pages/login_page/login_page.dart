import 'package:flutter/material.dart';

import '../home_page/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LoginPage"),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(),
              TextField(),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePage()),
                    );
                  },
                  child: Text("Login!")),
            ],
          ),
        ));
  }
}
