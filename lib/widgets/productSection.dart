import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/shoppingController.dart';
import 'package:getx/widgets/product_card.dart';

class ProductSection extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(
          // top: 15,
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        child: GetX<ShoppingController>(
          builder: (controller) {
            return ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: controller.plants.length,
              itemBuilder: (context, index) {
                return ProductCard(
                    id: controller.plants[index].id,
                    image: controller.plants[index].plantImage,
                    name: controller.plants[index].plantName,
                    price: controller.plants[index].price);
              },
            );
          },
        ),
      ),
    );
  }
}
