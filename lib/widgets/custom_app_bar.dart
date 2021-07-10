import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/cartController.dart';

class CustomAppBar extends StatelessWidget {
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10,
                    offset: Offset(4, 8),
                  )
                ]),
            child: Center(
              child: Icon(
                Icons.menu,
                color: Colors.grey[800],
              ),
            ),
          ),
          Stack(children: [
            Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 10,
                      offset: Offset(4, 8),
                    )
                  ],
                ),
                child: Center(
                  child: Icon(Icons.shopping_bag_rounded),
                )),
            Positioned(
              // top: 0,
              bottom: 5,
              right: 5,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: Colors.green[400],
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: GetX<CartController>(builder: (controller) {
                    return Text(
                      controller.cartItems.length.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    );
                  }),
                ),
              ),
            )
          ]),
        ],
      ),
    );
  }
}
