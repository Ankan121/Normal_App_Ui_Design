import 'package:flutter/material.dart';

class Favarite_Page extends StatefulWidget {
  const Favarite_Page({super.key});

  @override
  State<Favarite_Page> createState() => _Favarite_PageState();
}

class _Favarite_PageState extends State<Favarite_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Favarite"),
        ),
      ),
    );
  }
}
