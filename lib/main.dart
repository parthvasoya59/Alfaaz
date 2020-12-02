import 'package:alfaaz_delta/alfaaz_home.dart';
import 'package:alfaaz_delta/alfaaz_profile.dart';
import 'package:alfaaz_delta/comment_screen.dart';
import 'package:alfaaz_delta/login_screen.dart';
import 'package:alfaaz_delta/notification_screen.dart';
import 'package:alfaaz_delta/privacy_screen.dart';
import 'package:alfaaz_delta/savedposts_screen.dart';
import 'package:alfaaz_delta/search_screen.dart';
import 'package:alfaaz_delta/security_screen.dart';
import 'package:alfaaz_delta/signup_screen.dart';
import 'package:alfaaz_delta/switchaccount_screen.dart';
import 'package:alfaaz_delta/userinfo_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AlfaazHomeApp()
    );
  }
}