import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kripa_portfolio/screens/home_screen.dart';
import 'package:kripa_portfolio/utils/size_utils.dart';

class KripaPortfolioApp extends StatelessWidget {
  const KripaPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          title: 'Kripa Portfolio',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: 'Montserrat',
          ),
          home: const HomeScreen(),
        ),
    );
  }
}
