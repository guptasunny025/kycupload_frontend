import 'package:flutter/material.dart';
import 'package:kyc_app/screens/kycdetail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kyc App',
      theme: ThemeData(
        fontFamily: 'ReadexPro',
        primarySwatch: Colors.blue,
      ),
      home: const KycDetailScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
