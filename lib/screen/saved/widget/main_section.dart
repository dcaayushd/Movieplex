import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/saved_controller.dart';
import '../../../utils/constants.dart';

class MainSection extends StatelessWidget {
  final _savedController = Get.find<SavedController>();

  MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: gWidth,
      height: gHeight / 1.311,
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: _savedController.listOfSaved.length,
          itemBuilder: (ctx, index) {
            return Container(
              margin: const EdgeInsets.all(5),
              width: double.infinity,
              height: gHeight / 5,
              child: Row(
                children: [
                  FadeInDown(
                    delay: const Duration(milliseconds: 500),
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                _savedController
                                    .listOfSaved[index]
                                    .img,
                              ),
                              fit: BoxFit.cover)),
                      width: gWidth / 3,
                      height: double.infinity,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInLeft(
                        delay: const Duration(milliseconds: 600),
                        from: 80,
                        child: SizedBox(
                          width: 200,
                          height: 25,
                          child: Text(
                            _savedController
                                .listOfSaved[index]
                                .title,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      FadeInLeft(
                        delay: const Duration(milliseconds: 700),
                        from: 80,
                        child: SizedBox(
                          width: 150,
                          height: 20,
                          child: Text(
                            _savedController
                                .listOfSaved[index]
                                .subTitle,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      FadeInLeft(
                        delay: const Duration(milliseconds: 800),
                        from: 80,
                        child: Row(
                          children: [
                            Container(
                              width: 55,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  "IMBd",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              _savedController
                                  .listOfSaved[index]
                                  .imbd
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {
                                  Get.defaultDialog(
                                      
                                      barrierDismissible: false,
                                      title: "Warning!",
                                      content: const Text(
                                        "Do you really wanna remove this movie from this list?",
                                        textAlign: TextAlign.center,
                                      ),
                                      confirmTextColor: Colors.white,
                                      onCancel: () {},
                                      onConfirm: () {
                                        _savedController
                                            .removeSingleItem(index);
                                        Get.back();
                                      });
                                },
                                icon: const Icon(
                                  Icons.remove_circle_outline,
                                  color: Colors.red,
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
