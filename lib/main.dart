
import 'package:flutter/material.dart';
import 'package:flutter_app/navBar.dart';
import 'package:flutter_app/test.dart';
import "constant.dart";
import "login.dart";
import "navBar.dart";
void main(){
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      //home:Test(),
      home:LoginScreen(),
      //home:NavBar(),
      
      title: appName,
      debugShowCheckedModeBanner: false,
     
    );
  }
}