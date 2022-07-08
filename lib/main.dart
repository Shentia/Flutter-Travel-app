// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr2/model/travelModel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  double imageSize = 55;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: size.height / 1.8,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: size.height / 2.2,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100)),
                          image: DecorationImage(
                            image: AssetImage(travelList[_selectedIndex].image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //Head Icons
                      Positioned(
                        right: 0,
                        left: 0,
                        top: 0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(85, 255, 255, 255),
                                  ),
                                  child: const Icon(CupertinoIcons.arrow_left),
                                ),
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(85, 255, 255, 255),
                                  ),
                                  child: const Icon(CupertinoIcons.heart),
                                ),
                              ]),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        right: 0,
                        child: SizedBox(
                          width: 90,
                          height: double.maxFinite,
                          child: ListView.builder(
                            itemCount: travelList.length,
                            itemBuilder: (context, index) {
                              return imageItems(index);
                            },
                          ),
                        ),
                      ),
                      //title and Address counter

                      Positioned(
                        bottom: 120,
                        left: 50,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              travelList[_selectedIndex].name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  CupertinoIcons.placemark,
                                  color: Colors.white,
                                ),
                                Text(travelList[_selectedIndex].location,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color: Colors.white)),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  // color: Colors.blueAccent,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Container(
                              width: 85,
                              height: 85,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Distance"),
                                    Text(
                                      travelList[_selectedIndex].distance,
                                    ),
                                  ]),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Container(
                              width: 85,
                              height: 85,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Temp"),
                                    Text(
                                      travelList[_selectedIndex].temp + " ℃",
                                    ),
                                  ]),
                            ),
                          ),
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: const BorderSide(
                                color: Colors.grey,
                                width: 1,
                              ),
                            ),
                            child: Container(
                              width: 85,
                              height: 85,
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("Rating"),
                                    Text(
                                      travelList[_selectedIndex].rating,
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24, 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Description"),
                            ExpandableText(
                              travelList[_selectedIndex].description,
                              expandText: 'Read More',
                              collapseText: 'Read Less',
                              maxLines: 2,
                              linkColor: Colors.blueGrey,
                              textDirection: TextDirection.ltr,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Total Price"),
                                      Text(
                                        '${travelList[_selectedIndex].price} \$',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color.fromARGB(255, 0, 0, 0)),
                                    child: const Icon(
                                        CupertinoIcons.arrow_right,
                                        color: Colors.white),
                                  )
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imageItems(int index) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(travelList[index].image),
                    fit: BoxFit.fill,
                  ),
                ),
                width: _selectedIndex == index ? imageSize + 15 : imageSize,
                height: _selectedIndex == index ? imageSize + 15 : imageSize,
                duration: const Duration(milliseconds: 500),
              ),
            )),
      ],
    );
  }
}
