import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import 'components/product_tile_horizontal.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key, this.backButton}) : super(key: key);

  final Widget? backButton;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            leading: backButton,
            title: const Text('My Orders'),
            bottom: const TabBar(
              indicatorColor: AppColors.primary,
              indicatorWeight: 5,
              tabs: [
                Tab(text: 'Completed'),
                Tab(text: 'Cancelled'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              OrderCompletedTab(),
              OrderCancelledTab(),
            ],
          )),
    );
  }
}

class OrderCompletedTab extends StatelessWidget {
  const OrderCompletedTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(height: 16),
        ProductTileHorizontal(
          name: 'Henley Shirts',
          coverImage: 'https://i.imgur.com/fDwKPuo.png',
          amount: 250,
          time: 'Today',
        ),
        ProductTileHorizontal(
          name: 'Casual Shirts',
          coverImage: 'https://i.imgur.com/RIwYa5a.png',
          amount: 320,
          time: '20 Jan\'2021',
        ),
        ProductTileHorizontal(
          name: 'Casual Nolin',
          coverImage: 'https://i.imgur.com/y8oqJX3.png',
          amount: 165,
          time: '23 Jan\'2021',
        ),
        ProductTileHorizontal(
          name: 'Casual T-Shirt',
          coverImage: 'https://i.imgur.com/KexwuK9.png',
          amount: 165,
          time: '23 Jan\'2021',
        ),
      ],
    );
  }
}

class OrderCancelledTab extends StatelessWidget {
  const OrderCancelledTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('Orders That Are Cancelled Will Appear Here'));
  }
}
