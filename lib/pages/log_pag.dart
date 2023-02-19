import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  const LogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          const SizedBox(height: 50),
          //Logo
          const Icon(
            Icons.lock,
            size: 100,
          ),
          //wellcome
          Text(
            "Tekrara Hoşgeldin",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 16,
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //username textfield

          //pass textfiled

          // sign in button

          // or countunie wwith

          // google + apple sign in button

          // not a rmeemver
        ],
      ),
    );
  }
}
