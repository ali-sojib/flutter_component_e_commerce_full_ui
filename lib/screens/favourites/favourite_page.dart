import 'package:flutter/material.dart';

import '../../components/product_tile_square.dart';
import '../product/product_page.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// We are putting this here just for the sake of simplicity, and this is
    /// just for mockup..
    /// You shouldn't use or write any logic or keep your data here,
    /// this is bad for your app if you fetch or put any data here
    List<Widget> _favouriteItem = [
      ProductTileSquare(
        title: 'Long Sleeve Shirt',
        price: 165,
        imageLink: 'https://i.imgur.com/sjDVeNV.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductPage(
                    coverImage: 'https://i.imgur.com/sjDVeNV.png',
                  )));
        },
      ),
      ProductTileSquare(
        title: 'Casual Henley Shirts',
        price: 175,
        imageLink: 'https://i.imgur.com/PFBRThN.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductPage(
                    coverImage: 'https://i.imgur.com/PFBRThN.png',
                  )));
        },
      ),
      ProductTileSquare(
        title: 'Curved Hum Shirts',
        price: 100,
        imageLink: 'https://i.imgur.com/8dNDjHk.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductPage(
                    coverImage: 'https://i.imgur.com/8dNDjHk.png',
                  )));
        },
      ),
      ProductTileSquare(
        title: 'Casual Nolin',
        price: 100,
        imageLink: 'https://i.imgur.com/1phVInw.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductPage(
                    coverImage: 'https://i.imgur.com/1phVInw.png',
                  )));
        },
      ),
      ProductTileSquare(
        title: 'Casual Hem Shirts',
        price: 150,
        imageLink: 'https://i.imgur.com/QVroKWd.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductPage(
                    coverImage: 'https://i.imgur.com/QVroKWd.png',
                  )));
        },
      ),
      ProductTileSquare(
        title: 'Casual Nolin',
        price: 150,
        imageLink: 'https://i.imgur.com/y8oqJX3.png',
        hasFavourite: true,
        isFavourite: true,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const ProductPage(
                    coverImage: 'https://i.imgur.com/y8oqJX3.png',
                  )));
        },
      ),
    ];

    return Column(
      children: [
        AppBar(
          leading: const SizedBox(),
          title: const Text('Favourite'),
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            itemCount: _favouriteItem.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 290,
            ),
            itemBuilder: (context, index) {
              return _favouriteItem[index];
            },
          ),
        )
      ],
    );
  }
}
