import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';


void main(){
  runApp(myScreenApp());
}
class myScreenApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}