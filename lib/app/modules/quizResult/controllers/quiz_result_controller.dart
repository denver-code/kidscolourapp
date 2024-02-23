import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class QuizResultController extends GetxController {
  RxInt score = 0.obs;
  RxInt wrongAnswers = 0.obs;
  RxInt correctAnswers = 0.obs;
  RxInt totalQuestions = 0.obs;

  ConfettiController confettiController = ConfettiController(
    duration: const Duration(seconds: 2),
  );

  @override
  void onInit() {
    super.onInit();
    List<dynamic> args = Get.arguments;
    score.value = args[0];
    wrongAnswers.value = args[1];
    correctAnswers.value = args[2];
    totalQuestions.value = args[3];

    confettiController.play();
  }
}
