import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:normal_app_ui/src/login_Page.dart';
import 'package:normal_app_ui/src/navigation_var.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Page(),
    );
  }
}
