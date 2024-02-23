import 'package:get/get.dart';
import 'package:kidapp/app/data/content.dart';

class LearnController extends GetxController {
  RxList<ColorCard> colorCards = <ColorCard>[].obs;
  RxInt currentCard = 0.obs;

  nextCard() {
    if (currentCard.value < colorCards.length - 1) {
      currentCard.value++;
    }
  }

  previousCard() {
    if (currentCard.value > 0) {
      currentCard.value--;
    }
  }

  @override
  void onInit() {
    super.onInit();
    colorCards.value = cards;
  }
}
