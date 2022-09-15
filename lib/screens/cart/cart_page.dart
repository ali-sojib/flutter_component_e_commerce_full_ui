import 'package:flutter/material.dart';

import '../../constants/app_defaults.dart';
import '../payment/checkout_page.dart';
import 'components/product_tile_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Header
        AppBar(
          leading: const SizedBox(),
          title: const Text('My Cart'),
        ),

        /// Use List View Here
        Expanded(
          child: ListView(
            // shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: [
              ProductTileCart(
                name: 'Henley Shirts',
                price: 250,
                coverImage: 'https://i.imgur.com/PFBRThN.png',
                quantity: 1,
                increaseQuantity: () {},
                decreaseQuantity: () {},
              ),
              ProductTileCart(
                name: 'Casual Shirts',
                price: 145,
                coverImage: 'https://i.imgur.com/fDwKPuo.png',
                quantity: 3,
                increaseQuantity: () {},
                decreaseQuantity: () {},
              ),
              ProductTileCart(
                name: 'Casual Nolin',
                price: 225,
                coverImage: 'https://i.imgur.com/1phVInw.png',
                quantity: 1,
                increaseQuantity: () {},
                decreaseQuantity: () {},
              ),
              ProductTileCart(
                name: 'Casual Nolin',
                price: 225,
                coverImage: 'https://i.imgur.com/y8oqJX3.png',
                quantity: 1,
                increaseQuantity: () {},
                decreaseQuantity: () {},
              ),
            ],
          ),
        ),

        /// Total Item
        Padding(
          padding: const EdgeInsets.all(AppDefaults.padding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Subtotal  :',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Text(
                '\$740',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),

        /// Checkout Button

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const CheckoutPage()));
            },
            child: const Text('Checkout'),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
