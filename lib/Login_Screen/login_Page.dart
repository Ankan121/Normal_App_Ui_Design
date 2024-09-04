import 'package:flutter/material.dart';
import 'package:normal_app_ui/navigation_var.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  final _formKey = GlobalKey();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("AB Tech Sign in"),
          centerTitle: true,),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
                children:[ TextFormField(
                  //controller: _usernameController,
                  decoration: InputDecoration(labelText: "User Name"),
                  //obscureText: true,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Please Inter Your User Name';
                    }
                    return null;
                  },
                ),
                  TextFormField(
                      decoration: InputDecoration(labelText: "Password"),
                      validator: (value){
                        if(value == null || value.isEmpty){
                          return 'Please Inter Your Password';
                        }
                      }
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    if(_formKey == Null){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation_Page()));
                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation_Page()));
                    }
                  }, child: Text("Login")),
                ]
            ),
          ),

        ),
      ),
    );
  }
}

