import 'dart:ui';

import 'package:durbar/view/bottom_nav_page/cart.dart';
import 'package:durbar/view/bottom_nav_page/categories.dart';
import 'package:durbar/view/bottom_nav_page/profile.dart';
import 'package:durbar/view/bottom_nav_page/stores.dart';
import 'package:durbar/view/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

int currenTab = 0;
final List<Widget> screens = [Categories(), Store(), Cart(), Profile()];

final PageStorageBucket bucket = PageStorageBucket();
Widget currentScreen = Home();

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.asset(
              'assets/images/logo.jpg',
            ),
          ),
        ),
        onPressed: () {
          Get.off(Home());
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Categories();
                        currenTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                            color: currenTab == 0 ? Colors.pink : Colors.grey),
                        Text(
                          "Categories",
                          style: TextStyle(
                              color:
                                  currenTab == 0 ? Colors.pink : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Store();
                        currenTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,
                            color: currenTab == 1 ? Colors.pink : Colors.grey),
                        Text(
                          "Stores",
                          style: TextStyle(
                              color:
                                  currenTab == 1 ? Colors.pink : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  //right tab icon button
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Cart();
                        currenTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.dashboard,
                            color: currenTab == 2 ? Colors.pink : Colors.grey),
                        Text(
                          "Cart",
                          style: TextStyle(
                              color:
                                  currenTab == 2 ? Colors.pink : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currenTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat,
                            color: currenTab == 3 ? Colors.pink : Colors.grey),
                        Text(
                          "Profile",
                          style: TextStyle(
                              color:
                                  currenTab == 3 ? Colors.pink : Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  //right tab icon button
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
