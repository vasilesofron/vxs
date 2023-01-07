// ignore_for_file: prefer_const_constructors
/*
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:vxs/nav_screens/farm/farm.dart';
import 'package:vxs/nav_screens/home/home.dart';
import 'package:vxs/nav_screens/nav_dashboard/nav_dashboard.dart';
import 'package:vxs/nav_screens/nav_dashboard/nav_dashboard_controller.dart';
import 'package:vxs/nav_screens/profile/profile.dart';
import 'package:vxs/nav_screens/to_do/to_do.dart';
import 'package:vxs/welcome/welcome_page.dart';

import '../../navigation/custom_animated_bottom_bar.dart';

class NavDashboard extends StatefulWidget {
  const NavDashboard({super.key});

  @override
  State<NavDashboard> createState() => _NavDashboardState();
}

class _NavDashboardState extends State<NavDashboard> {
  int _currentIndex = 0;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavDashboardController>(builder: (controller) {
      
      return Scaffold(
          backgroundColor: Colors.green,
          body: SafeArea(
            child: IndexedStack(index: controller.tabIndex, children: [
              HomePage(),
              FarmHome(),
              ToDoList(),
              Profile(),
            ]),
          ),


          bottomNavigationBar: CustomAnimatedBottomBar(
            containerHeight: 70,
            backgroundColor: Color(0xfffff2d1),
            selectedIndex: controller.tabIndex,
            showElevation: true,
            itemCornerRadius: 24,
            curve: Curves.easeIn,
            onItemSelected: controller.changeTabIndex,
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
          ));
    });
  }
}
*/