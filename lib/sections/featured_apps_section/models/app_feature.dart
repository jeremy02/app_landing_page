import 'package:flutter/material.dart';

class AppFeature {
  final String title, description, image;
  final Color titleColor;

  AppFeature({
    this.title,
    this.description,
    this.image,
    this.titleColor,
  });
}

List<AppFeature> appFeatures = List.generate(
  demoAppFeaturesData.length,
  (index) => AppFeature(
    title: demoAppFeaturesData[index]['title'],
    description: demoAppFeaturesData[index]['description'],
    image: demoAppFeaturesData[index]['image'],
    titleColor: demoAppFeaturesData[index]['titleColor'],
  ),
);

List demoAppFeaturesData = [
  {
    "title": "Fast Performance",
    "description": appFeaturesDemoText,
    "image": "assets/icons/ic_speed.png",
    "titleColor": Color.fromARGB(255, 245, 91, 107),
  },
  {
    "title": "Prototyping",
    "description": appFeaturesDemoText,
    "image": "assets/icons/ic_prototyping.png",
    "titleColor": Color.fromARGB(255, 167, 187, 255),
  },
  {
    "title": "Vector Editing",
    "description": appFeaturesDemoText,
    "image": "assets/icons/ic_editing.png",
    "titleColor": Color.fromARGB(255, 143, 193, 161),
  }
];

String appFeaturesDemoText =
    "Get your blood tests delivered at home collect a sample from the news your blood tests.";
