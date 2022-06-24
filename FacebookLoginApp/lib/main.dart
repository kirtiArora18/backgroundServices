
import 'package:facebookloginapp/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:home.dart';
void main()
{
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var colors;
    return MaterialApp(
      title:'flutter Demo',
      theme:ThemeData(
        primarySwatch:Colors.blue,
      ),
      home:HomePage(),
    );
  }
}
