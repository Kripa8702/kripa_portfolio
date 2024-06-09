import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kripa_portfolio/utils/size_utils.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;
  final bool showGradient;

  const BaseScreen({super.key, required this.child, this.showGradient = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        bottom: false,
        child: showGradient
            ? Expanded(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      left: -50.w,
                      top: -50.h,
                      child: Container(
                        height: 300.h,
                        width: 300.w,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff2962ff),
                              Color(0xff35c985),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.0, 0.7],
                          ),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -50.w,
                      bottom: 10.h,
                      child: Container(
                        height: 500.h,
                        width: 300.w,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xff35c985),
                              Color(0xff2962ff),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 200, sigmaY: 150),
                          child: Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(

                      width: double.maxFinite,
                      child: child,
                    ),
                  ],
                ),
              )
            : child,
      ),
    );
  }
}
