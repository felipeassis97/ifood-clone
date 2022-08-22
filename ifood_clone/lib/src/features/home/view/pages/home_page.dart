import 'package:flutter/material.dart';
import 'package:ifood_clone/src/features/home/view/widgets/all_stores/all_stores_widget.dart';
import 'package:ifood_clone/src/features/home/view/widgets/drink_stores/drink_stores_widget.dart';
import 'package:ifood_clone/src/features/home/view/widgets/drug_stores/drug_stores_widget.dart';
import 'package:ifood_clone/src/features/home/view/widgets/markets/markets_widget.dart';
import 'package:ifood_clone/src/features/home/view/widgets/pet_stores/pet_stores_widget.dart';
import 'package:ifood_clone/src/features/home/view/widgets/restaurants/restaurants_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late final tabController = TabController(length: 6, vsync: this);
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            controller: tabController,
            tabs: const [
              Tab(text: 'Início'),
              Tab(text: 'Restaurantes'),
              Tab(text: 'Mercados'),
              Tab(text: 'Bebidas'),
              Tab(text: 'Farmácia'),
              Tab(text: 'Pets'),
            ],
            isScrollable: true,
            labelColor: Colors.red,
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.black38,
          ),
        ),
        body: TabBarView(
          controller: tabController,
          children: const [
            AllStoresWidget(),
            RestaurantsWidget(),
            MarketsWidget(),
            DrinkStoresWidget(),
            DrugStoresWidget(),
            PetStoresWidget()
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
