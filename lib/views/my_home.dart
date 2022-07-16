import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:statemanagement_api/controllers/product_controller.dart';
import 'package:statemanagement_api/views/product_sktach.dart';

class MyHome extends StatelessWidget {
  final productcontroller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text("API with State Management"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                itemCount: productcontroller.productlist.length,
                itemBuilder: (context, index) {
                  return ProductSktach(productcontroller.productlist[index]);
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
