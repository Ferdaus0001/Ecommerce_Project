import 'package:flutter/material.dart';
// This is a Home Screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Home',style: TextStyle(fontSize: 33,color: Colors.white),),
      backgroundColor: Colors.blue,
      centerTitle: true,
      elevation: 10,
    ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: Center(child: Text('Tab',style: TextStyle(fontSize: 33,color: Colors.white),)),
        ),
      ),
    );
  }
}
