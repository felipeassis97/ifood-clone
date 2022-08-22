import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ifood_design_system/ifood_design_system.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      bottomNavigationBar:
          IfoodBottomBar(onIndexSelected: (index) => print(index), items: [
        IfoodBottomBarItem(icon: Icons.home_rounded, label: 'início'),
        IfoodBottomBarItem(icon: Icons.search_rounded, label: 'Search'),
        IfoodBottomBarItem(icon: Icons.file_copy_rounded, label: 'Pedidos'),
        IfoodBottomBarItem(icon: Icons.person_rounded, label: 'Perfil'),
      ]),
    );
  }
}
