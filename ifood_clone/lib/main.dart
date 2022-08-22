import 'package:flutter/material.dart';
import 'package:ifood_clone/src/features/home/view/pages/home_page.dart';

void main() {
  runApp(const IfoodApp());
}

class IfoodApp extends StatelessWidget {
  const IfoodApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ifood',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
