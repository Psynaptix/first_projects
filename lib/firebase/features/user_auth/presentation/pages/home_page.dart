import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../../../MAIN PROFILE/BOTTOM NAVIGATION BAR/bottomnavbar.dart';
import '../../../../../MAIN PROFILE/SIDE NAVIGATION BAR/sidebar.dart';



//eto na ung homepage after login


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeX'),
        backgroundColor: Colors.transparent,
      ),
      drawer: sideBar(),
      bottomNavigationBar: BottomNavBar(),
      backgroundColor: Color(0xFFEEEEEE),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          // Your content goes here
        ],
      ),
    );
  }
}
