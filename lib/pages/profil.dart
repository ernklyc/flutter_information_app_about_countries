import 'package:flutter/material.dart';
import 'package:uplabs_2/utility/constants/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemaColors().themaColor,
      appBar: AppBar(),
      body: const Text(
        "sdsdfsdf",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
