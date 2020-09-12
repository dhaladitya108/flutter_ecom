import 'package:flutter/material.dart';
import 'package:flutter_ecom/widgets/category_card.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard(
            Icon(
              Icons.book,
              size: 40,
            ),
            'Book',
          ),
          CategoryCard(
            Icon(
              Icons.computer,
              size: 40,
            ),
            'Laptops',
          ),
          CategoryCard(
            Icon(
              Icons.videogame_asset,
              size: 40,
            ),
            'Game',
          ),
          CategoryCard(
            Icon(
              Icons.videocam,
              size: 40,
            ),
            'Movie',
          ),
          CategoryCard(
            Icon(
              Icons.watch,
              size: 40,
            ),
            'Watches',
          ),
          CategoryCard(
            Icon(
              Icons.weekend,
              size: 40,
            ),
            'Furniture',
          ),
        ],
      ),
    );
  }
}
