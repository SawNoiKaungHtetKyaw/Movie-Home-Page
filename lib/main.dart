import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_home/pages/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:HomePage());
}