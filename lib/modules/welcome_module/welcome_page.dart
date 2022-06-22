import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final index;

  WelcomePage({Key? key, this.index}) : super(key: key);

  final _imagePaths = [
    'assets/carousel1.png',
    'assets/carousel2.png',
    'assets/carousel3.png',
  ];

  final _imageTitles = [
    'Find service near you',
    'Customize your needs',
    'Communicate Instantly',
  ];

  final _imageSummary = [
    'Search for local and international services and browse different categories',
    'Ask for what you want through our instant customised request',
    'No need to wait and commnuicate with service providers instantly',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Image.asset(_imagePaths.elementAt(index)),
            margin: const EdgeInsets.only(bottom: 20),
          ),
          Text(
            _imageTitles.elementAt(index),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 15),
          ),
          Text(
            _imageSummary.elementAt(index),
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
