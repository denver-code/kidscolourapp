import 'package:get/get.dart';

class QuizResultController extends GetxController {
  RxInt score = 0.obs;
  RxInt wrongAnswers = 0.obs;
  RxInt correctAnswers = 0.obs;
  RxInt totalQuestions = 0.obs;

  @override
  void onInit() {
    super.onInit();
    List<dynamic> args = Get.arguments;
    score.value = args[0];
    wrongAnswers.value = args[1];
    correctAnswers.value = args[2];
    totalQuestions.value = args[3];
  }
}
