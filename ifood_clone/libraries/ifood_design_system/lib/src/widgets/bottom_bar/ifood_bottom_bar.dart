import 'package:flutter/material.dart';
import 'package:ifood_design_system/src/widgets/bottom_bar/ifood_bottom_bar_item.dart';

class IfoodBottomBar extends StatefulWidget {
  final List<IfoodBottomBarItem> items;
  final void Function(int index) onIndexSelected;
  const IfoodBottomBar({
    Key? key,
    required this.items,
    required this.onIndexSelected,
  }) : super(key: key);

  @override
  State<IfoodBottomBar> createState() => _IfoodBottomBarState();
}

class _IfoodBottomBarState extends State<IfoodBottomBar> {
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.black87,
      unselectedItemColor: Colors.black26,
      showUnselectedLabels: true,
      currentIndex: indexSelected,
      onTap: (index) {
        widget.onIndexSelected(index);
        setState(() {
          indexSelected = index;
        });
      },
      items: List.from(
        widget.items.map(
          (item) =>
              BottomNavigationBarItem(icon: Icon(item.icon), label: item.label),
        ),
      ),
    );
  }
}
