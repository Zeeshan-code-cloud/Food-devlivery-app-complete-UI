import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'All_categories_page.dart';
import 'SignIn_page.dart';

class Landing_Page extends StatefulWidget {
  const Landing_Page({Key? key}) : super(key: key);

  @override
  State<Landing_Page> createState() => _Landing_PageState();
}

class _Landing_PageState extends State<Landing_Page>
    with TickerProviderStateMixin {
  late final AnimationController animationController;
  late final Animation<double> animations;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
    AnimationController(vsync: this, duration: const Duration(seconds: 3))
      ..repeat();
    animations =
        CurvedAnimation(parent: animationController, curve: Curves.linear);


    Timer(const Duration(seconds: 4), () =>
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const SignIn_page())));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffaf6fe),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            ScaleTransition(
              scale: animationController,
              child: SizedBox(
                width: 550,
                height: 450,
                child: Image.asset(
                  "assets/images/logo_3.jpg", fit: BoxFit.cover,),
              ),
            ),
            ScaleTransition(
              scale: animationController,
              child: const Text("wellcome to shopping", style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 21,
              ),),
            )

          ],
        ));
  }
}
