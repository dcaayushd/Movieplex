import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/card_controller.dart';
import '../../../utils/constants.dart';

class TitleTextDetails extends StatelessWidget {
  final _cardController = Get.find<CardController>();

  TitleTextDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 190,
      left: 10,
      child: FadeInDown(
        delay: const Duration(milliseconds: 400),
        child: SizedBox(
          width: gWidth / 1.2,
          height: gHeight / 9,
          child: Text(
            _cardController
                .listOfMovies[_cardController.currentIndex.value]
                .title,
            softWrap: true,
            style: const TextStyle(
                fontSize: 35, color: cardColor, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
