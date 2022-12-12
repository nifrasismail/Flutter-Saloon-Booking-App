import 'package:flutter/material.dart';
import 'package:saloon_booking_app/theme.dart';

import 'package:saloon_booking_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Saloon',
      theme: theme(),
      routerConfig: router,
    );
  }
}
