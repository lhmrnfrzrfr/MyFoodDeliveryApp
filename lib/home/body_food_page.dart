import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfooddelivery/widgets/big_text.dart';
import 'package:myfooddelivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.8);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(
      children: [
        Container(
          height: 220,
          margin: EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven ? Colors.blue : Colors.purple,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/nasi-padang.jpg"),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Nasi Padang"),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 15,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        SmallText(text: "4.5"),
                        SizedBox(
                          width: 8,
                        ),
                        SmallText(text: "107"),
                        SizedBox(
                          width: 8,
                        ),
                        SmallText(text: "Comments"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [],
                    )
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
