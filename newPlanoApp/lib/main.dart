import 'package:flutter/material.dart';
import 'package:ono/SplashScreen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(builder: ((context) => const MyApp())),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SplashScreen(),
    );
  }
}
