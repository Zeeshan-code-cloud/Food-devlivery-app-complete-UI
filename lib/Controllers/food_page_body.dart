import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Big_text.dart';
import 'ReusableRow.dart';
import 'Small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  PageController pageController = PageController(
    viewportFraction: 0.9,
  );

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //header section
          Container(
            height: 340,
            // color: Colors.green,
            child: PageView.builder(
                controller: pageController,
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return BuildScrollPage(position);
                }),
          ),
          //smooth page indicator
          SmoothPageIndicator(
            controller: pageController,
            count: 5,
            axisDirection: Axis.horizontal,
            textDirection: TextDirection.rtl,
            effect: const SlideEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 14.0,
                dotHeight: 12.0,
                paintStyle: PaintingStyle.stroke,
                strokeWidth: 1.0,
                dotColor: Colors.grey,
                activeDotColor: Colors.indigo),
          ),

          //popular and food pairing are contain
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: const  EdgeInsets.only(left: 20, top: 12.0),
                child: BigText(
                  text: "Popular",
                  color: Colors.black,
                  size: 19,
                ),
              ),
             const  SizedBox(
                width: 6.0,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 3),
                child: BigText(
                  text: ".",
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 16.0,
              ),
              Container(
                child: SmallText(
                  text: "Food pairing",
                  size: 12,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14.0,),
           Container(
            height: 600,
            child: ListView.builder(
              shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 12.0, bottom: 12.0),
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/recepi2.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 12.0, right: 5.0),
                        height: 120,
                        width: 332,
                        decoration: BoxDecoration(
                          color: const Color(0xffffedff),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: BigText(
                                text: "Nutritious fruits meals in chinese side",
                                color: Colors.black,
                                size: 19,
                                overFlow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(height: 12.0,),
                            Container(child: SmallText(text: "With Chinese characteristics ")),
                            SizedBox(height: 12.0,),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Reusable_Row(
                                    iconData: Icons.circle,
                                    color: Colors.cyan,
                                    text: 'Normal',
                                  ),

                                  Reusable_Row(
                                    iconData: Icons.location_on_outlined,
                                    color: Colors.amberAccent,
                                    text: '172 Km',
                                  ),

                                  Reusable_Row(
                                    iconData: Icons.access_time,
                                    color: Colors.redAccent,
                                    text: '32 min',
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ),
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget BuildScrollPage(
    int index,
  ) {
    return Stack(
      children: [
        Container(
          height: 230,
          margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
          decoration: BoxDecoration(
              color: index.isEven ? Colors.red : Colors.indigoAccent,
              borderRadius: BorderRadius.circular(22.0),
              image: const DecorationImage(
                image: AssetImage("assets/images/recepi1.jpg"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9),
                  blurRadius: 4,
                )
              ]),
        ),
        //if you put a container inside in another container it well get the full height of
        // the parent container to solve this is used Stack widget to give the specific height and width
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 150,
            margin: const EdgeInsets.only(
                top: 48, left: 38, right: 38, bottom: 32.0),
            decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(22.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(1.0),
                      blurRadius: 5,
                      offset: Offset(0, 5))
                ]),
            child: Container(
              width: 395,
              padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Chinese food",
                    color: Colors.black,
                    size: 17,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(5, (index) {
                          return const Icon(
                            Icons.star,
                            color: Colors.amberAccent,
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "4.7"),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: "1298"),
                      const SizedBox(
                        width: 1,
                      ),
                      SmallText(text: "Comments"),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Reusable_Row(
                        iconData: Icons.circle,
                        color: Colors.cyan,
                        text: 'Normal',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Reusable_Row(
                        iconData: Icons.location_on_outlined,
                        color: Colors.amberAccent,
                        text: '172 Km',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Reusable_Row(
                        iconData: Icons.access_time,
                        color: Colors.redAccent,
                        text: '32 min',
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
