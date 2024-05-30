import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/card_controller.dart';

class MovieInfoIconDetails extends StatelessWidget {
  final _cardController = Get.find<CardController>();

  MovieInfoIconDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 280,
      left: 10,
      child: FadeInDown(
        delay: const Duration(milliseconds: 500),
        child: Row(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  _cardController
                      .listOfMovies[
                          _cardController.currentIndex.value]
                      .iMBd,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 3),
              width: 95,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Time",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _cardController
                        .listOfMovies[
                            _cardController.currentIndex.value]
                        .time,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
