import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

// Entry-point of the app
void main() {
  runApp(
    GetMaterialApp(
      // Setting title of the App
      title: "Kid Colour App",
      // Setting initial route/page
      initialRoute: AppPages.INITIAL,
      // Set all the available pages to the app
      getPages: AppPages.routes,
    ),
  );
}
