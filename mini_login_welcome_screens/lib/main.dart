
import 'package:flutter/material.dart';

import 'UI_Screen/Splash.dart';


void main(){
  runApp(MiniProject());
}

class MiniProject extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }

}