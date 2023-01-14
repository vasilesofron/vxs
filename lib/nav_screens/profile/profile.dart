// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
            SizedBox(
              width: 120,
              height: 150,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(image: AssetImage("img/user.png"))),
            ),
            SizedBox(
              height: 10,
            ),
            Text("User Name Dummy Text"),
            SizedBox(height: 10,),
            Text("Email Addres Dummy Text"),
            SizedBox(height: 10,),
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
                        color: Color(0xff34b982),),
                        
                        ),
                     child: const Text("Edit Profile"),)
                    ),
                    SizedBox(height: 30,),
                    Divider(),

                    ///MENU
                    ListTile(
                      leading: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xff34b982).withOpacity(0.5),
                        ),
                        child: Icon(Icons.abc),
                      ),
                    )
                    
          ]),
        ),
      ),
    );
  }
}
