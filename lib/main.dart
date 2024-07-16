import 'package:flutter/material.dart';
import 'package:gedebooks/pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Tambahkan baris ini
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: const Home()
    );
  }
}


