import 'package:flutter/material.dart';
import 'package:flutter_ecom/widgets/product_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ecom/models/products.dart';

class AllProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = productData.items;
    return GridView.builder(
      physics: ScrollPhysics(),
      itemCount: products.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, i) => ChangeNotifierProvider.value(
        value: products[i],
        child: ProductItem(
          name: products[i].name,
          imageUrl: products[i].imgUrl,
        ),
      ),
    );
  }
}
