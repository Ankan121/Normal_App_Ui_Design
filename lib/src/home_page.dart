import 'package:flutter/material.dart';
import 'package:normal_app_ui/src/login_Page.dart';
import 'package:normal_app_ui/src/navigation_var.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("AB Tech",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
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
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
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
                  SizedBox(height: 381,),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Page()));
                    },
                    child: Text("Logout"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              Container(
              height: 200,
              width: 410,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/banner.jpg"),
                      fit: BoxFit.fill,
                    )
                )
            ),
              SizedBox(height: 20,),
              Text("Catagoris",style: TextStyle(fontSize: 20),),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(height: 200,),
                    Container(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                            padding: const EdgeInsets.all(1),
                            height: 120,
                            width: 150,

                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                alignment: Alignment.bottomCenter,
                                image: AssetImage(
                                  "assets/phone.jpg",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            /*child: Text(
                              "Phone",
                              style: TextStyle(color: Colors.orange, fontSize: 20,),
                              textAlign: TextAlign.center,
                            ),*/
                          ),
                            SizedBox(height: 10,),
                            Text("Phone",style: TextStyle(fontSize: 20),),
                          ]
                        ),

                      ),
                    ),
                    SizedBox(height: 200,),
                    SizedBox(width: 20,),
                    Container(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                            padding: const EdgeInsets.all(1),
                            height: 120,
                            width: 150,

                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                alignment: Alignment.bottomCenter,
                                image: AssetImage(
                                  "assets/Laptop.jpg",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            /*child: Text(
                              "Phone",
                              style: TextStyle(color: Colors.orange, fontSize: 20,),
                              textAlign: TextAlign.center,
                            ),*/
                          ),
                            SizedBox(height: 10,),
                            Text("Laptop",style: TextStyle(fontSize: 20),),
                          ]
                        ),

                      ),
                    ),
                    SizedBox(width: 20,),
                    SizedBox(height: 150,),
                    Container(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                            padding: const EdgeInsets.all(1),
                            height: 120,
                            width: 150,

                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                alignment: Alignment.center,
                                image: AssetImage(
                                  "assets/Headphone.jpg",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                            /*child: Text(
                              "Phone",
                              style: TextStyle(color: Colors.orange, fontSize: 20,),
                              textAlign: TextAlign.center,
                            ),*/
                          ),
                            SizedBox(height: 10,),
                            Text("Head Phone",style: TextStyle(fontSize: 20),),
                          ]
                        ),

                      ),
                    ),
                    SizedBox(width: 20,),
                    SizedBox(height: 150,),
                    Container(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                            padding: const EdgeInsets.all(1),
                            height: 120,
                            width: 150,

                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              image: DecorationImage(
                                alignment: Alignment.bottomCenter,
                                image: AssetImage(
                                  "assets/airbuds.jpg",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                            SizedBox(height: 10,),
                            Text("Air Buds",style: TextStyle(fontSize: 20),),
                          ]
                        ),

                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              ListTile(
                title: Text("AR-VR Box"),
                subtitle: Text("Apple"),
                leading: Icon(Icons.search),
                trailing: Icon(Icons.arrow_right_alt),
              ),
              ListTile(
                title: Text("Headphone g550"),
                subtitle: Text("MI"),
                leading: Icon(Icons.search_rounded),
                trailing: Icon(Icons.arrow_right_alt),
              ),
              ListTile(
                title: Text("Ram DDR 4"),
                subtitle: Text("Coursiar"),
                leading: Icon(Icons.search_rounded),
                trailing: Icon(Icons.arrow_right_alt),
              ),
              Text("E commerce is the process of buying and selling goods and services online. It has become increasingly popular in recent years, as it offers a convenient and efficient way to shop. There are many advantages to using  e commerce, including the ability to compare prices, access a wider range of products, and enjoy greater convenience. It is also typically faster and more convenient than traditional shopping methods."),
          ],
          ),
        ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add),
      ),
    );
  }
}
