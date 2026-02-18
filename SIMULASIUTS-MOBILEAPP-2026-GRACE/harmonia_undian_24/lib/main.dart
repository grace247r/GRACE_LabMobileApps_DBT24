import 'package:flutter/material.dart';
import 'pages/medicine_empty.dart';
import 'pages/add_medicine.dart';
import 'pages/medicine_filled.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeEmptyScreen(),
        '/add': (context) => const AddMedicinePage(),
        '/filled': (context) => const MedicineFilledPage(),
      },
    );
  }
}
