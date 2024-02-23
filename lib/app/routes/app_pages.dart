import 'package:get/get.dart';

import '../modules/draw_view/bindings/draw_view_binding.dart';
import '../modules/draw_view/views/draw_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/learn/bindings/learn_binding.dart';
import '../modules/learn/views/learn_view.dart';
import '../modules/quiz/bindings/quiz_binding.dart';
import '../modules/quiz/views/quiz_view.dart';
import '../modules/quizResult/bindings/quiz_result_binding.dart';
import '../modules/quizResult/views/quiz_result_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DRAW_VIEW,
      page: () => DrawViewView(),
      binding: DrawViewBinding(),
    ),
    GetPage(
      name: _Paths.LEARN,
      page: () => const LearnView(),
      binding: LearnBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ,
      page: () => const QuizView(),
      binding: QuizBinding(),
    ),
    GetPage(
      name: _Paths.QUIZ_RESULT,
      page: () => const QuizResultView(),
      binding: QuizResultBinding(),
    ),
  ];
}
