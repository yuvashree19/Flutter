
import 'dart:html';

import "package:flutter/material.dart";
class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 300),
          child: const TextField(
             decoration: InputDecoration(
             prefixIcon: Icon(Icons.email,color:Colors.black26),
             labelText:'EMAIL ADDRESS',
             labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color:Colors.black54)
             
           ),
          ),
        ),
      ],)
      
      
    );
    
  }
}