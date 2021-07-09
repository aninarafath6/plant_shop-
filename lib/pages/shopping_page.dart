import 'package:flutter/material.dart';
import 'package:getx/widgets/custom_app_bar.dart';
import 'package:getx/widgets/product_card.dart';

class ShopingPage extends StatelessWidget {
  const ShopingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var heading = RichText(
      text: TextSpan(
        text: 'welcome to  \n',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          height: 1.5,
        ),
        children: const <TextSpan>[
          TextSpan(
            text: 'Plant Shop',
            style: TextStyle(
                fontSize: 35, color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              SizedBox(
                height: 35,
              ),
              heading,
              SizedBox(
                height: 45,
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return ProductCard(image: 'assets/images/plant-1.png');
                  },
                  // children: [
                  //   ProductCard(image: 'assets/images/plant-1.png'),
                  //   // ProductCard(),
                  // ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
