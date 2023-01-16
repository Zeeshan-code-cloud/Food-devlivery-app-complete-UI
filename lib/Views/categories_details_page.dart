import 'package:ecommerce_app/Controllers/Big_text.dart';
import 'package:flutter/material.dart';
import '../Controllers/ReusableRow.dart';
import '../Controllers/Small_text.dart';

class categories_details_page extends StatelessWidget {
  const categories_details_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: 340,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/recepi3.jpg"),
                fit: BoxFit.cover,
              )),
            )),
        Positioned(
          left: 20.0,
            right: 20.0,
            top: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.only(right: 4.0),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Icon(Icons.arrow_back_ios_new_sharp,color: Colors.black,size: 30,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                padding: const EdgeInsets.only(right: 4.0),
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Icon(Icons.shopping_cart,color: Colors.black,size: 30,),
              ),
            )

          ],
        )),
        Positioned(
          top: 310,
            child: Container(
              padding: EdgeInsets.only(left: 12.0,right: 12.0),
          height: 500,
          width: 483,
              decoration: const BoxDecoration(
                color: Color(0xfffaf1e2),

                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                )
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: "Chinese Dish",color: Colors.black,size: 27,),
                    const SizedBox(height: 18.0,),
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
                    const SizedBox(height: 18.0,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                    const SizedBox(height: 28.0,),

                    SmallText(text: "Lorem Ipsum is simply dummy text of the printing and typesetting"
                        " industry. Lorem Ipsum has been the industry's standard dummy text ever since"
                        " the 1500s, when an unknown printer took a galley of type and scrambled it to"
                        " make a type specimen book. It has survived not only five centuries, but also "
                        " publishing software like Aldus PageMaker including versions of Lorem Ipsum"),


                  ],
                ),
              ),
        ),

        )
      ],
    ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
        padding: EdgeInsets.all(15),

        height: 120,
        width: 475,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
          width: 450,
          height: 100,
          decoration: BoxDecoration(
              color: Color(0xfffaf1e2),
              borderRadius: BorderRadius.circular(40)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60,
                width: 115,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.remove, size: 30,color: Colors.black,)),
                    BigText(text: "0",color: Colors.black,size: 24,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.add, size: 30,color: Colors.black,)),
                  ],
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Color(0xff3cb371),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(child: BigText(text: "\$ 0.08 Add to Card",color: Colors.white,size: 18,)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
