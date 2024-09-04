import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:flutter_toastr/flutter_toastr.dart';
import 'dart:io';

import 'package:normal_app_ui/Login_Screen/login_Page.dart';

class Profile_page extends StatefulWidget {
  const Profile_page({super.key});

  @override
  State<Profile_page> createState() => _Profile_pageState();
}

class _Profile_pageState extends State<Profile_page> {
  File? _imageFile ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Profile", style: TextStyle(color: Colors.white),),
        ),
        drawer: Drawer(
          child: ListView(
            //padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(accountName: Text("Ankan Biswas"), accountEmail: Text("ankanbiswas942@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/phone.jpg"),
                ),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('Business'),
                onTap: () {
                },
              ),
              ListTile(
                title: const Text('School'),
                onTap: () {
                },
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Page()));
                  },
                  child: Text("Logout"),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children:[ Stack(
              children: [
                Container(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/phone.jpg"),
                    radius: 100,
                  ),
                ),
              ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                      children:[ _imageFile != null ?  CircleAvatar(
                  radius: 100,//*** aita holo camera or gelary theke neya pic er size***
                    backgroundImage: FileImage(_imageFile!),
                  ) :
                      Align(
                        alignment: Alignment.topCenter,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/phone.jpg"),
                          radius: 100,
                        ),
                      ),
                  //mage.file(File(_imageFile!.path)
    ],
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 110,
                    child: InkWell(
                        onTap: ()async{
                          final ImagePicker picker = ImagePicker(); // Pick an image.
                          final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                          print(image);
                          print(image?.name);
                          print(image?.path);
                          print("here i have print image path");
                          setState(() {
                            _imageFile=File(image!.path);

                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(Icons.camera,size: 40,color: Colors.white,),),),)
        ],
            ),
              SizedBox(height: 10,),
              Text("Email: ankanbiswas942@gmail.com"),
              Text("User Name: Ankan Biswas"),
              ListTile(
                title: Text("About",style: TextStyle(color: Colors.black),),
                trailing: Icon(Icons.arrow_right_alt, color: Colors.black,),
              ),
              ListTile(
                title: Text("Address"),
                trailing: Icon(Icons.arrow_right_alt,color: Colors.black,),
              ),
              ListTile(
                title: Text("School"),
                trailing: Icon(Icons.arrow_right_alt,color: Colors.black,),
              ),
              ListTile(
                title: Text("Collage"),
                trailing: Icon(Icons.arrow_right_alt,color: Colors.black,),
              ),
      ]
          ),

        ),
      ),
    );
  }
}
