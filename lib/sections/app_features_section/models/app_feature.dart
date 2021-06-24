import 'package:flutter/material.dart';

class AppFeature {
  final String title, description, image, imageBg;
  final Color titleColor;

  AppFeature({
    this.title,
    this.description,
    this.image,
    this.imageBg,
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
    "titleColor": Colors.blue,
  },
  {
    "title": "Vector Editing",
    "description": appFeaturesDemoText,
    "image": "assets/icons/ic_editing.png",
    "titleColor": Color.fromARGB(255, 143, 193, 161),
  }
];

List<AppFeature> appProductFeatures = List.generate(
  demoAppProductFeaturesData.length,
  (index) => AppFeature(
    title: demoAppProductFeaturesData[index]['title'],
    description: demoAppProductFeaturesData[index]['description'],
    image: demoAppProductFeaturesData[index]['image'],
    imageBg: demoAppProductFeaturesData[index]['imageBg'],
  ),
);

// this display the apps product features
List demoAppProductFeaturesData = [
  {
    "title": "App Development",
    "description": appFeaturesDemoText,
    "image": "assets/icons/app_features/ic_app_development.png",
    "imageBg": "assets/icons/app_features/ic_app_development_bg.png",
  },
  {
    "title": "10 Times Award",
    "description": appFeaturesDemoText,
    "image": "assets/icons/app_features/ic_trophy.png",
    "imageBg": "assets/icons/app_features/ic_trophy_bg.png",
  },
  {
    "title": "Vector Editing",
    "description": appFeaturesDemoText,
    "image": "assets/icons/app_features/ic_cloud_storage.png",
    "imageBg": "assets/icons/app_features/ic_cloud_storage_bg.png",
  },
  {
    "title": "Customization",
    "description": appFeaturesDemoText,
    "image": "assets/icons/app_features/ic_customization.png",
    "imageBg": "assets/icons/app_features/ic_customization_bg.png",
  },
  {
    "title": "UX Planning",
    "description": appFeaturesDemoText,
    "image": "assets/icons/app_features/ic_ui.png",
    "imageBg": "assets/icons/app_features/ic_ui_bg.png",
  },
  {
    "title": "Customer Service",
    "description": appFeaturesDemoText,
    "image": "assets/icons/app_features/ic_customer-service.png",
    "imageBg": "assets/icons/app_features/ic_customer-service_bg.png",
  }
];

String appFeaturesDemoText =
    "Get your blood tests delivered at home collect a sample from the news your blood tests.";
