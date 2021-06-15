import 'package:flutter/material.dart';

class AppReward {
  final String title, description, image;
  final Color titleColor;

  AppReward({
    this.title,
    this.description,
    this.image,
    this.titleColor,
  });
}

List<AppReward> appRewards = List.generate(
  demoAppRewardsData.length,
  (index) => AppReward(
    title: demoAppRewardsData[index]['title'],
    description: demoAppRewardsData[index]['description'],
    image: demoAppRewardsData[index]['image'],
    titleColor: demoAppRewardsData[index]['titleColor'],
  ),
);

List demoAppRewardsData = [
  {
    "title": "Automatic Payouts",
    "description": appRewardsDemoText,
    "image": "assets/icons/ic_rewards_badge.png",
    "titleColor": Color.fromARGB(255, 245, 91, 107),
  },
  {
    "title": "Network Effect",
    "description": appRewardsDemoText,
    "image": "assets/icons/ic_rewards_network.png",
    "titleColor": Colors.blue,
  },
  {
    "title": "Bigger Rewards Method",
    "description": appRewardsDemoText,
    "image": "assets/icons/ic_rewards_payouts.png",
    "titleColor": Color.fromARGB(255, 143, 193, 161),
  }
];

String appRewardsDemoText =
    "Get your blood tests delivered at home \ncollect a sample from the \nnews your blood tests.";
