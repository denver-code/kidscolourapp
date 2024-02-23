import 'package:floodfill_image/floodfill_image.dart';
import 'package:flutter/material.dart';
import "package:flutter_hsvcolor_picker/flutter_hsvcolor_picker.dart";
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/interactive_controller.dart';

class InteractiveView extends GetView<InteractiveController> {
  const InteractiveView({Key? key}) : super(key: key);

  // make a popup for colour picking. MyDialog from GetX
  void showColorPicker() {
    Get.defaultDialog(
      title: "Select a colour",
      content: SizedBox(
        width: 300,
        child: SwatchesPicker(
          onChanged: (value) {
            controller.selectedColor.value = controller.getMaterialColor(value);
            Get.back();
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("Close"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Colouring!'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Obx(
                () => FloodFillImage(
                  imageProvider: AssetImage(
                    controller.selectedImage.value,
                  ),
                  width: Get.width.toInt(),
                  fillColor: controller.selectedColor.value,
                  avoidColor: const [Colors.transparent, Colors.black],
                  tolerance: 20,
                ),
              ),

              // Select colour from the palette
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Select a colour",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  showColorPicker();
                },
                child: const Text("Select a colour"),
              ),
              // Select image
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Select an image",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              // pick the image, only 1 image can be selected at a time
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final ImagePicker _picker = ImagePicker();
                      final XFile? image = await _picker.pickImage(
                        source: ImageSource.gallery,
                      );
                      if (image != null) {
                        controller.selectImage(image.path);
                      }
                    },
                    child: const Text("Select an image"),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.selectImage("assets/images/dog.jpg");
                    },
                    child: const Text("Reset"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
