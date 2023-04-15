import 'package:Centre/modules/bmi_result/bmi_result.dart';
import 'package:flutter/material.dart';
import 'package:Centre/modules/home/home-screen.dart';

import 'layout/home_layout.dart';
import 'modules/bmi/bmi_screen.dart';
import 'modules/login/login_screen.dart';
import 'modules/messenger/messenger.dart';
import 'modules/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Centre',
        home:home_layout(),
      );
  }
}





