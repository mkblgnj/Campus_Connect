import 'package:blog/HomePage.dart';
import 'package:blog/LoginRegisterPage.dart';
import 'package:blog/Mapping.dart';
import 'package:flutter/material.dart';
import 'Authentication.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(BlogApp());
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: "Blog App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MappingPage(auth: Auth(),),
    );
  }
}

