// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vxs/login/login_page.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34b982),
        centerTitle: true,
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(
              color: Color(0xfffff2d1),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xff34b982),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Stack(
              children: [
                SizedBox(
                  width: 120,
                  height: 150,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage("img/user.png"))),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xff34b982).withOpacity(0.5),
                    ),
                    child: Icon(
                      Icons.camera_alt_rounded,
                      color: Color(0xfffff2d1),
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text("User Name Dummy Text"),
            SizedBox(
              height: 10,
            ),
            Text("Email Addres Dummy Text"),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color(0xff34b982),
                    backgroundColor: Color(0xfffff2d1),
                    side: BorderSide.none,
                    shape: StadiumBorder(),
                    textStyle: TextStyle(
                      color: Color(0xff34b982),
                    ),
                  ),
                  child: const Text("Save Profile"),
                )),
            SizedBox(
              height: 30,
            ),
            Divider(),

            ///MENU
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Full Name'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: Color(0xfffff2d1),
                        ),
                        labelStyle: TextStyle(
                          color: Color(0xfffff2d1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(width: 2.0, color: Color(0xfffff2d1)),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Farm Name'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        prefixIcon: Icon(
                          Icons.house_rounded,
                          color: Color(0xfffff2d1),
                        ),
                        labelStyle: TextStyle(
                          color: Color(0xfffff2d1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(width: 2.0, color: Color(0xfffff2d1)),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: Color(0xfffff2d1),
                        ),
                        labelStyle: TextStyle(
                          color: Color(0xfffff2d1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(width: 2.0, color: Color(0xfffff2d1)),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text('Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        prefixIcon: Icon(
                          Icons.key_rounded,
                          color: Color(0xfffff2d1),
                        ),
                        labelStyle: TextStyle(
                          color: Color(0xfffff2d1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(width: 2.0, color: Color(0xfffff2d1)),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        label: Text('Confirm Password'),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        prefixIcon: Icon(
                          Icons.key_rounded,
                          color: Color(0xfffff2d1),
                        ),
                        labelStyle: TextStyle(
                          color: Color(0xfffff2d1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide:
                              BorderSide(width: 2.0, color: Color(0xfffff2d1)),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Joined DUMMY TEXT',
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                text: ' DATE DUMMY TEXT',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: const StadiumBorder(),
                          side: BorderSide.none,
                            backgroundColor: Colors.redAccent),
                        child: const Text('Delete'),
                      )
                    ],
                  ),
                ],
              )),
            ),
          ]),
        ),
      ),
    );
  }
}
