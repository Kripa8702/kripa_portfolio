import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kripa_portfolio/utils/size_utils.dart';
import 'package:kripa_portfolio/widgets/base_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      showGradient: true,
      child: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 100.h,
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // A circle avatar with a gradient border
                    Container(
                      height: 120.h,
                      width: 120.w,
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kripa.jpeg'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              'I develop in ',
                              style: TextStyle(
                                fontSize: 20.fSize,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                              child: Text(
                                'Flutter',
                                style: TextStyle(
                                  fontSize: 22.fSize,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'and ',
                              style: TextStyle(
                                fontSize: 20.fSize,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                              margin: const EdgeInsets.only(top: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.black,
                              ),
                              child: Text(
                                'Kotlin.',
                                style: TextStyle(
                                  fontSize: 22.fSize,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
                //rounded corner black container
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, I am Kripa. I am a Flutter Developer.',
                        style: TextStyle(
                          fontSize: 20.fSize,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'I have been developing mobile applications for more than 2 years. I have worked on various projects and have experience in developing applications from scratch to deployment.',
                        style: TextStyle(
                          fontSize: 16.fSize,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                // white container with rounded corners
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  padding: EdgeInsets.all(20.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'I have experience in:',
                        style: TextStyle(
                          fontSize: 20.fSize,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '1. Developing mobile applications using Flutter.',
                        style: TextStyle(
                          fontSize: 16.fSize,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '2. Developing backend using Firebase.',
                        style: TextStyle(
                          fontSize: 16.fSize,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '3. Developing backend using Node.js.',
                        style: TextStyle(
                          fontSize: 16.fSize,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        '4. Developing backend using Spring Boot.',
                        style: TextStyle(
                          fontSize: 16.fSize,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
