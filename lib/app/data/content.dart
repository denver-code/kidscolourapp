import 'package:flutter/material.dart';
import 'package:kidapp/hex2color.dart';

class ColorCard {
  String colorName;
  String colorImage;
  Color color;
  List<String> colorImages;
  ColorCard(
      {required this.colorName,
      required this.colorImages,
      required this.colorImage,
      required this.color});
}

List<ColorCard> cards = [
  ColorCard(
    colorName: "Yellow",
    colorImages: ["banana.png", "image 14.png"],
    colorImage: "sun.png",
    color: HexColor.fromHex("#FCCB30"),
  ),
  ColorCard(
    colorName: "Red",
    colorImages: ["balloon.png", "strawberry.jpg"],
    colorImage: "apple.png",
    color: HexColor.fromHex("#FF0000"),
  ),
  ColorCard(
    colorName: "Blue",
    colorImages: [
      "blue_balloon.png",
    ],
    colorImage: "cloud.png",
    color: HexColor.fromHex("#0000FF"),
  ),
  ColorCard(
    colorName: "Green",
    colorImages: ["leaf.webp", "green_apple.png"],
    colorImage: "cactus.jpg",
    color: HexColor.fromHex("#00973F"),
  ),
];
