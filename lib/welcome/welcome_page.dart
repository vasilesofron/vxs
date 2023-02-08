// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vxs/auth_controller/auth_controller.dart';
import 'package:vxs/machinery/machinery.dart';
import 'package:vxs/nav_screens/farm/farm.dart';
import 'package:vxs/nav_screens/home/home.dart';
import 'package:vxs/nav_screens/nav_dashboard/nav_dashboard.dart';
import 'package:vxs/nav_screens/profile/profile.dart';
import 'package:vxs/nav_screens/to_do/task_page.dart';
import 'package:vxs/nav_screens/to_do/to_do.dart';
import 'package:vxs/nav_screens/to_do/to_do_FINAL.dart';
import 'package:vxs/nav_screens/to_do/to_do_page_test.dart';
import 'package:vxs/recipes/recipes.dart';

import '../navigation/custom_animated_bottom_bar.dart';

class WelcomePage extends StatefulWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _currentIndex = 0;
  final _inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    //We use this so we can change the width easily
    double w = MediaQuery.of(context).size.width;
    //We use this so we can change the height easily
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff34b982),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //THIS IS THE LOGO IMAGE FROM THE TOP
            SizedBox(
              height: 25,
            ),
            Container(
              width: w,
              height: h * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("img/managementLogo.png"),
                    fit: BoxFit.cover),
              ),
            ), //LOGO IMAGE ENDS HERE
            SizedBox(height: 20),
            //Welcome Text Start Here
            Container(
              width: w,
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Color(0xfffff2d1),
                    ),
                  ), //WELCOME TEXT ENDS HERE
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.email,
                    
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xfffff2d1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(FarmHome());
              },
              child: Container(
                width: w * 0.9,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("img/signin.png"), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: w*0.05,),
                      Icon(
                        Icons.cabin,
                        size: h*0.04,
                        color: Color(0xff34b982),),
                      SizedBox(width: w*0.2,),
                      
                      Text(
                        "Farm",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1d5055)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            

            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(TaskAdd());
              },
              child: Container(
                width: w * 0.9,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("img/signin.png"), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: w*0.05,),
                      Icon(
                        Icons.checklist_outlined,
                        size: h*0.04,
                        color: Color(0xff34b982),),
                      SizedBox(width: w*0.2,),
                      Text(
                        "To Do List",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1d5055)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(Machinery());
              },
              child: Container(
                width: w * 0.9,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("img/signin.png"), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: w*0.05,),
                      Icon(
                        Icons.agriculture,
                        size: h*0.04,
                        color: Color(0xff34b982),),
                      SizedBox(width: w*0.2,),
                      
                      Text(
                        "Machinery",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1d5055)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(Recipes());
              },
              child: Container(
                width: w * 0.9,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("img/signin.png"), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: w*0.05,),
                      Icon(
                        Icons.eco_rounded,
                        size: h*0.04,
                        color: Color(0xff34b982),),
                      SizedBox(width: w*0.2,),
                      
                      Text(
                        "Recipes",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1d5055)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(Profile());
              },
              child: Container(
                width: w * 0.9,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("img/signin.png"), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: w*0.05,),
                      Icon(
                        Icons.account_circle,
                        size: h*0.04,
                        color: Color(0xff34b982),),
                      SizedBox(width: w*0.2,),
                      
                      Text(
                        "Profile",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1d5055)),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                AuthController.instance.logOut();
              },
              child: Container(
                width: w * 0.9,
                height: h * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  
                  image: DecorationImage(
                      image: AssetImage("img/signin.png"), fit: BoxFit.cover),
                ),
                child: Center(
                  child: Row(
                    
                    children: <Widget>[
                      SizedBox(width: w*0.05,),
                      Icon(
                        Icons.logout,   
                        size: h*0.04,
                        color: Color(0xff34b982),),
                      SizedBox(width: w*0.2,),
                      Text(
                        "Log Out",
                        
                        style: TextStyle(
                            
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff1d5055)),
                      ),
                    ],
                  ),
                  
                ),
                
              ),
              
            ),
            SizedBox(height: w*0.1,),
            
          ],
        ),
      ),
    );
  }


/*Widget _buildBottomBar(){
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Color(0xfffff2d1),
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: Icon(Icons.apps),
          title: Text('Home'),
          activeColor: Color(0xff34b982),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.cabin),
          title: Text('Farm'),
          activeColor: Color(0xff34b982),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.checklist_outlined),
          title: Text('To Do List'),
          activeColor: Color(0xff34b982),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Profile'),
          activeColor: Color(0xff34b982),
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
*/
}
