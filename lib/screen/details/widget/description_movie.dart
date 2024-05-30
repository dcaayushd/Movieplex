import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../controller/card_controller.dart';

class DescriptionMovieDetails extends StatelessWidget {
  final _cardController = Get.find<CardController>();

  DescriptionMovieDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 390,
      left: 20,
      child: Center(
        child: FadeInDown(
          delay: const Duration(milliseconds: 900),
          child: SizedBox(
            width: gWidth / 1.1,
            height: gHeight / 6,
            child: SingleChildScrollView(
                child: Text(
              _cardController
                  .listOfMovies[_cardController.currentIndex.value]
                  .description,
              style: const TextStyle(color: Color.fromARGB(255, 131, 131, 131)),
            )),
          ),
        ),
      ),
    );
  }
}
