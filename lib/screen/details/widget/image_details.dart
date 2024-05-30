import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/card_controller.dart';
import '../../../utils/constants.dart';

class ImageWidgetDetails extends StatelessWidget {
  final _cardController = Get.find<CardController>();

  ImageWidgetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gWidth,
      height: gHeight / 1.8,
      child: Hero(
        tag: _cardController.currentIndex.value,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              _cardController
                  .listOfMovies[_cardController.currentIndex.value]
                  .imageAd,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.darken),
          )),
        ),
      ),
    );
  }
}
