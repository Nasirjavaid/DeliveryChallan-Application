import 'package:flutter/material.dart';
import 'package:vision_plus/Screens/dashBoardScreen/dashBoardScreen.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
   body: Center(child:DashBordScreen(),)
      
    );
  }
}