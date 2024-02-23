import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quiz_result_controller.dart';

class QuizResultView extends GetView<QuizResultController> {
  const QuizResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFE0C9),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/guess_the_colour.png",
              fit: BoxFit.cover,
              scale: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: Get.width,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Your Score",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(() => Text(
                          "${controller.score.value}/${controller.totalQuestions.value * 2}",
                          style: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Correct Answers",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(() => Text(
                          "${controller.correctAnswers.value}/${controller.totalQuestions.value}",
                          style: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Wrong Answers",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Obx(() => Text(
                          "${controller.wrongAnswers.value}/${controller.totalQuestions.value}",
                          style: const TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Get.offNamed("/quiz");
                      },
                      child: const Text("Play Again"),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
