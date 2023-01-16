import 'package:flutter/material.dart';

import '../Controllers/Big_text.dart';
import '../Controllers/Small_text.dart';
import '../Controllers/food_page_body.dart';

class All_categories_page extends StatefulWidget {
  const All_categories_page({Key? key}) : super(key: key);

  @override
  State<All_categories_page> createState() => _All_categories_pageState();
}

class _All_categories_pageState extends State<All_categories_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, bottom: 12.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //by defualt property of tge column position is top
                    //by defualt property of the row position is centered
                    children: [
                      BigText(
                        text: 'Pakistan',
                      ), //big text are the custom text it have some predefined properties
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SmallText(
                            text: "Peshawar",
                          ),
                          const Icon(Icons.arrow_drop_down_rounded)
                        ],
                      ) //small text are the custom text it also some predefined properties
                    ],
                  ),
                  Container(
                    child: Icon(Icons.search_outlined),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(child:  FoodPageBody()),
        ],
      ),
    );
  }
}
