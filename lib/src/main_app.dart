import 'package:flutter/material.dart';
import 'package:snacky_1/src/features/order/presentation/home_page.dart';
import 'package:snacky_1/src/features/order/presentation/start_page.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          HomePage(),
          StartPage(),
        ],
      ),
    );
  }
}
