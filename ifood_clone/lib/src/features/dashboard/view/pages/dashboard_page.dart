import 'package:flutter/material.dart';
import 'package:ifood_clone/src/features/home/view/pages/home_page.dart';
import 'package:ifood_clone/src/features/orders/view/pages/orders_page.dart';
import 'package:ifood_clone/src/features/profile/view/pages/profile_page.dart';
import 'package:ifood_clone/src/features/search/view/pages/search_page.dart';
import 'package:ifood_design_system/ifood_design_system.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomePage(),
          SearchPage(),
          OrdersPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: IfoodBottomBar(
          onIndexSelected: (index) => pageController.jumpToPage(index),
          items: [
            IfoodBottomBarItem(
                icon: Icons.home_outlined,
                activeIcon: Icons.home_rounded,
                label: 'início'),
            IfoodBottomBarItem(
                icon: Icons.search_outlined,
                activeIcon: Icons.search_rounded,
                label: 'Buscar'),
            IfoodBottomBarItem(
                icon: Icons.file_copy_outlined,
                activeIcon: Icons.file_copy_rounded,
                label: 'Pedidos',
                countBage: 5),
            IfoodBottomBarItem(
                icon: Icons.person_outline,
                activeIcon: Icons.person_rounded,
                label: 'Perfil'),
          ]),
    );
  }
}
