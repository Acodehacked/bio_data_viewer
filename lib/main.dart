import 'package:flutter/material.dart';
import 'bio_data.dart';

void main() {
  runApp(const BioDataApp());
}

class BioDataApp extends StatelessWidget {
  const BioDataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bio Data Viewer',
      theme: ThemeData(primarySwatch: Colors.teal, useMaterial3: true),
      home: const BioDataPage(),
    );
  }
}
