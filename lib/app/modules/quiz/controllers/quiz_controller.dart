import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidapp/app/data/content.dart';
import 'dart:math' as Math;

class QuizController extends GetxController {
  RxInt currentCard = 0.obs;
  RxList<QuizCard> quizColorCards = <QuizCard>[].obs;
  RxInt score = 0.obs;
  RxInt wrongAnswers = 0.obs;
  RxInt correctAnswers = 0.obs;

  nextCard() {
    if (currentCard.value < quizColorCards.length - 1) {
      currentCard.value++;
    } else {
      Get.offNamed("/quiz-result", arguments: [
        score.value,
        wrongAnswers.value,
        correctAnswers.value,
        quizColorCards.length
      ]);
    }
  }

  previousCard() {
    if (currentCard.value > 0) {
      currentCard.value--;
    }
  }

  checkAnswer(bool isCorrect) {
    if (isCorrect) {
      score.value += 2;
      correctAnswers.value++;
    } else {
      wrongAnswers.value++;
    }

    nextCard();
  }

  @override
  void onInit() {
    super.onInit();
    // need to shuffle the cards and generate the choices and new list of quizCards
    List<ColorCard> shuffledCards = cards.toList()..shuffle();
    List<QuizCard> quizCards = [];
    // randomly generate 3 choices for each card
    shuffledCards.forEach((element) {
      List<Choice> choices = [];
      choices.add(Choice(choice: element.color, isCorrect: true));
      for (int i = 0; i < 3; i++) {
        Color randomColor =
            Color((Math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0);
        choices.add(Choice(choice: randomColor, isCorrect: false));
      }
      choices.shuffle();
      quizCards.add(QuizCard(colorCard: element, choices: choices));
    });
    quizColorCards.value = quizCards;
  }
}

class Choice {
  Color choice;
  bool isCorrect;
  Choice({required this.choice, required this.isCorrect});
}

class QuizCard {
  ColorCard colorCard;
  List<Choice> choices;
  QuizCard({required this.colorCard, required this.choices});
}
