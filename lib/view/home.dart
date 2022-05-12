import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 0.0),
                  ),
                  hintText: 'Search here',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.pink,
              ),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SafeArea(
                  child: Column(children: <Widget>[
                //Slider(value: value, onChanged: onChanged),
                SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Trending Product")),
                SizedBox(
                  height: 10,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(40), // if you need this
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/logo.jpg'),
                                  Text("Xiaomi poco X4 5G"),
                                  Text(
                                    "30,000",
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                  Text("1500",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: ElevatedButton(
                                        child: Text('Add'),
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.pink),
                                      ))
                                ]),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(40), // if you need this
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/logo.jpg'),
                                  Text("Xiaomi poco X4 5G"),
                                  Text(
                                    "30,000",
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                  Text("1500",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: ElevatedButton(
                                        child: Text('Add'),
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.pink),
                                      ))
                                ]),
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(40), // if you need this
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Container(
                          color: Colors.white,
                          width: 200,
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/images/logo.jpg'),
                                  Text("Xiaomi poco X4 5G"),
                                  Text(
                                    "30,000",
                                    style: TextStyle(color: Colors.pink),
                                  ),
                                  Text("1500",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough)),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: ElevatedButton(
                                        child: Text('Add'),
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.pink),
                                      ))
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Top Catgories",
                        style: TextStyle(color: Colors.pink),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "See All",
                        style: TextStyle(color: Colors.pink),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 80,
                              width: 80,
                              color: Colors.grey.shade200,
                              child: Image.asset(
                                'assets/images/phone1.png',
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Electronics")
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 80,
                              width: 80,
                              color: Colors.grey.shade200,
                              child: Image.asset(
                                'assets/images/phone1.png',
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Electronics")
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 80,
                              width: 80,
                              color: Colors.grey.shade200,
                              child: Image.asset(
                                'assets/images/phone1.png',
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Electronics")
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 80,
                              width: 80,
                              color: Colors.grey.shade200,
                              child: Image.asset(
                                'assets/images/phone1.png',
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Electronics")
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          ClipOval(
                            child: Container(
                              height: 80,
                              width: 80,
                              color: Colors.grey.shade200,
                              child: Image.asset(
                                'assets/images/phone1.png',
                                width: 80.0,
                                height: 80.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text("Electronics")
                        ],
                      ),
                    ],
                  ),
                ),
              ])),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
