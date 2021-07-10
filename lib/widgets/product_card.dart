import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/cartController.dart';

final cartController = Get.put(CartController());

class ProductCard extends StatelessWidget {
  final String image;
  final int id;
  final String name;
  final num price;

  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(bottom: 10),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(5),
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 90,
                height: 90,
                margin: EdgeInsets.only(right: 10),
                child: Image.asset(
                  image,
                  // fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 190,
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('₹ ${price.toString()}'),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              cartController.addToCart(id);
            },
            icon: Icon(Icons.add_shopping_cart_outlined),
          ),
        ],
      ),
    );
  }
}
