import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:floodfill_image/floodfill_image.dart';

class InteractiveController extends GetxController {
  MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;
    final int alpha = color.alpha;

    final Map<int, Color> shades = {
      50: Color.fromARGB(alpha, red, green, blue),
      100: Color.fromARGB(alpha, red, green, blue),
      200: Color.fromARGB(alpha, red, green, blue),
      300: Color.fromARGB(alpha, red, green, blue),
      400: Color.fromARGB(alpha, red, green, blue),
      500: Color.fromARGB(alpha, red, green, blue),
      600: Color.fromARGB(alpha, red, green, blue),
      700: Color.fromARGB(alpha, red, green, blue),
      800: Color.fromARGB(alpha, red, green, blue),
      900: Color.fromARGB(alpha, red, green, blue),
    };

    return MaterialColor(color.value, shades);
  }

  // handle image selection
  RxString selectedImage = "assets/images/dog.jpg".obs;

  void selectImage(String image) {
    selectedImage.value = image;
  }

  Rx<Color> selectedColor = Colors.red.obs;
}
