import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfooddelivery/home/body_food_page.dart';
import 'package:myfooddelivery/utils/colors.dart';
import 'package:myfooddelivery/widgets/big_text.dart';
import 'package:myfooddelivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //first container // top widgets
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    BigText(text: "Indonesia"),
                    Row(
                      children: [
                        SmallText(text: "Jakarta"),
                        Icon(Icons.arrow_drop_down_sharp)
                      ],
                    )
                  ]),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      child: Icon(Icons.search, color: Colors.white),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
