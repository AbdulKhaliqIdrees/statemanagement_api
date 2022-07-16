import 'package:flutter/material.dart';
import 'package:statemanagement_api/models/product_model.dart';

class ProductSktach extends StatelessWidget {
  const ProductSktach(this.product, {Key? key}) : super(key: key);
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Text(
              product.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(
              product.body,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
