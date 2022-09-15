import 'package:flutter/material.dart';

import '../../../components/product_tile_square.dart';
import '../../../components/section_divider_title.dart';
import '../../product/product_page.dart';

class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionDividerTitle(
          title: 'New Arrival',
          onTap: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductTileSquare(
                title: 'Long Sleeve Shirts',
                imageLink: 'https://i.imgur.com/QVroKWd.png',
                price: 165,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductPage(
                            coverImage: 'https://i.imgur.com/QVroKWd.png',
                          )));
                },
              ),
              ProductTileSquare(
                title: 'Casual Henley Shirts',
                imageLink: 'https://i.imgur.com/PFBRThN.png',
                price: 275,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProductPage(
                            coverImage: 'https://i.imgur.com/PFBRThN.png',
                          )));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
