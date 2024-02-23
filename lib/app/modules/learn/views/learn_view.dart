import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kidapp/hex2color.dart';

import '../controllers/learn_controller.dart';

class LearnView extends GetView<LearnController> {
  const LearnView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LearnController learnController = Get.put(LearnController());
    return Scaffold(
        backgroundColor: HexColor.fromHex("#EFE0C9"),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/learn_the_colour.png",
                  fit: BoxFit.cover,
                  scale: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: Get.width,
                  height: Get.height / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 10,
                          spreadRadius: 5)
                    ],
                  ),
                  child: Obx(() => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              learnController
                                  .colorCards[learnController.currentCard.value]
                                  .colorName,
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/${learnController.colorCards[learnController.currentCard.value].colorImage}",
                                fit: BoxFit.cover,
                                scale: 2,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (var item in learnController
                                      .colorCards[
                                          learnController.currentCard.value]
                                      .colorImages)
                                    Image.asset(
                                      "assets/images/$item",
                                      fit: BoxFit.scaleDown,
                                      width: 60,
                                      height: 60,
                                    ),
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: learnController
                                          .colorCards[
                                              learnController.currentCard.value]
                                          .color,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            blurRadius: 1,
                                            spreadRadius: 1)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          learnController.previousCard();
                        },
                        iconSize: 30,
                        icon: const Icon(Icons.arrow_back_ios_outlined),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                          onPressed: () {
                            learnController.nextCard();
                          },
                          iconSize: 30,
                          icon: const Icon(Icons.arrow_forward_ios_outlined)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
