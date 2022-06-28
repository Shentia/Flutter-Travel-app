// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr2/model/travelModel.dart';

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
  final int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          body: SafeArea(
            child: Column(children: [
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
                  ],
                ),
              ),
              Expanded(
                child:
                    Container(color: Colors.blueAccent, width: double.infinity),
              )
            ]),
          ),
        ));
  }
}
