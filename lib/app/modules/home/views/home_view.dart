import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: Get.height / 15),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/title.png",
                fit: BoxFit.cover,
                scale: 2,
              ),
            ),
          ),
          Positioned(
            top: Get.height / 20,
            right: Get.width / 15,
            child: Image.asset(
              "assets/images/image 14.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
          ),
          Positioned(
            top: Get.height / 13,
            left: Get.width / 8,
            child: Image.asset(
              "assets/images/image 13.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
          ),
          Positioned(
            top: Get.height / 5.6,
            left: 0,
            child: Image.asset(
              "assets/images/image 7.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
          ),
          Positioned(
            top: Get.height / 2.7,
            right: 50,
            child: Image.asset(
              "assets/images/image 3.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
          ),
          Positioned(
            top: Get.height / 1.9,
            left: 0,
            child: Image.asset(
              "assets/images/image 10.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
          ),
          Positioned(
            top: Get.height / 1.5,
            right: 0,
            child: Image.asset(
              "assets/images/image 5.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/Kids.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
          ),
          Positioned(
            top: Get.height / 2.5,
            left: 0,
            right: 0,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/learn");
                      },
                      child: Container(
                        width: 282,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20),
                        decoration: const ShapeDecoration(
                          color: Color(0xFF00973F),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                          shadows: [
                            BoxShadow(
                              color: Color(0xFF000000),
                              blurRadius: 0,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Learn',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Sukhumvit Set',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/quiz");
                      },
                      child: Container(
                        width: 282,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20),
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFFD000),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                          shadows: [
                            BoxShadow(
                              color: Color(0xFF000000),
                              blurRadius: 0,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Quiz',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Sukhumvit Set',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/draw");
                      },
                      child: Container(
                        width: 282,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20),
                        decoration: const ShapeDecoration(
                          color: Color(0xFFFF0000),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                          shadows: [
                            BoxShadow(
                              color: Color(0xFF000000),
                              blurRadius: 0,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Draw',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Sukhumvit Set',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed("/interactive");
                      },
                      child: Container(
                        width: 282,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 20),
                        decoration: const ShapeDecoration(
                          color: Color.fromARGB(255, 19, 47, 139),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(width: 1)),
                          shadows: [
                            BoxShadow(
                              color: Color(0xFF000000),
                              blurRadius: 0,
                              offset: Offset(4, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Interactive',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontFamily: 'Sukhumvit Set',
                                fontWeight: FontWeight.w700,
                                height: 0,
                                letterSpacing: -1.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
