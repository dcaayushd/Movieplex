import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../../controller/reservation_controller.dart';

class SelectDateTextAndButton extends StatelessWidget {
  final _reserveController = Get.find<ReservationController>();

  SelectDateTextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 520,
      left: 15,
      right: 15,
      child: SizedBox(
        width: gWidth,
        child: FadeInDown(
          delay: const Duration(milliseconds: 1000),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                height: 30,
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      text: 'Select ',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Date',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 120,
                height: 35,
                child: GetBuilder<ReservationController>(builder: (_) {
                  return _reserveController.selectedIndex == 0
                      ? Container()
                      : FadeIn(
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            elevation: 0,
                            onPressed: () {},
                            color: Colors.red,
                            child: const FittedBox(
                                child: Text(
                              "Reservation",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
