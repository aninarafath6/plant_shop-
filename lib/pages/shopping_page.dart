import 'package:flutter/material.dart';

import 'package:getx/widgets/custom_app_bar.dart';
import 'package:getx/widgets/heading.dart';
import 'package:getx/widgets/productSection.dart';

class ShopingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(),
                  SizedBox(
                    height: 45,
                  ),
                  heading(),
                  SizedBox(
                    height: 35,
                  ),
                ],
              ),
            ),
            ProductSection()
          ],
        ),
      ),
    );
  }
}
