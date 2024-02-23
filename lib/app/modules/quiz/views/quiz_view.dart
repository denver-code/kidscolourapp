import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kidapp/hex2color.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    QuizController quizController = Get.put(QuizController());
    return Scaffold(
        backgroundColor: HexColor.fromHex("#EFE0C9"),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/guess_the_colour.png",
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
                          spreadRadius: 5),
                    ],
                  ),
                  child: Obx(() => Column(
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Text(
                          //     quizController
                          //         .quizColorCards[
                          //             quizController.currentCard.value]
                          //         .colorCard
                          //         .colorName,
                          //     style: const TextStyle(
                          //         fontSize: 30, fontWeight: FontWeight.bold),
                          //   ),
                          // ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/images/${quizController.quizColorCards[quizController.currentCard.value].colorCard.colorImage}",
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
                                  for (var item in quizController
                                      .quizColorCards[
                                          quizController.currentCard.value]
                                      .colorCard
                                      .colorImages)
                                    Image.asset(
                                      "assets/images/$item",
                                      fit: BoxFit.scaleDown,
                                      width: 60,
                                      height: 60,
                                    ),
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
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var item in quizController
                            .quizColorCards[quizController.currentCard.value]
                            .choices)
                          GestureDetector(
                            onTap: () {
                              quizController.checkAnswer(item.isCorrect);
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      color: item.choice,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.1),
                                            blurRadius: 1,
                                            spreadRadius: 1)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
