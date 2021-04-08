import 'package:flutter/material.dart';
import 'package:flutter_new_travel_app/home.dart';
import 'package:flutter_new_travel_app/pages/home_page.dart';
import 'package:flutter_new_travel_app/pages/profile_page.dart';
import 'package:flutter_new_travel_app/pages/sign_in_page.dart';
import 'package:flutter_new_travel_app/pages/sign_in_page_v2.dart';
import 'package:flutter_new_travel_app/pages/sign_up_page.dart';



void main() => runApp(TravelApp());


class TravelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}








