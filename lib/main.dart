import 'package:fixitnow/screens/activity/activity.dart';
import 'package:fixitnow/screens/home/home.dart';
import 'package:fixitnow/screens/home/widgets/home_detailed_jobcard.dart';
import 'package:fixitnow/screens/login&signup/login.dart';
import 'package:fixitnow/screens/login&signup/signup.dart';
import 'package:fixitnow/screens/message/message.dart';
import 'package:fixitnow/screens/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fixitnow/themes/light_theme.dart';
import 'package:fixitnow/themes/dark_theme.dart';

import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,builder: (context)=>const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      title: 'FIXITNOW',
      home: loginpage(),
    );
  }
}
