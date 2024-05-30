import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../controller/card_controller.dart';

class DirAndWrInfo extends StatelessWidget {
  
  final _cardController = Get.find<CardController>();

  DirAndWrInfo({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 360,
      left: 20,
      right: 10,
      child: FadeInDown(
        delay: const Duration(milliseconds: 700),
        child: SizedBox(
          width: gWidth,
          child: Row(
            children: [
              SizedBox(
                width: 160,
                child: FittedBox(
                  child: RichText(
                    text: TextSpan(
                      text: 'Director',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: ' : ',
                        ),
                        TextSpan(
                            text:
                                _cardController.listOfMovies[_cardController.currentIndex.value].director,
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(" | "),
              const SizedBox(
                width: 5,
              ),
              SizedBox(
                width: 180,
                child: FittedBox(
                  child: RichText(
                    text: TextSpan(
                      text: 'Writer',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                      children: <TextSpan>[
                        const TextSpan(
                          text: ' : ',
                        ),
                        TextSpan(
                            text:
                                _cardController.listOfMovies[_cardController.currentIndex.value].writer,
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
