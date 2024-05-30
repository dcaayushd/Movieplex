import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/saved_controller.dart';
import '../../screen/saved/widget/main_section.dart';
import '../../utils/constants.dart';
import './widget/appbar.dart';
import './widget/buy_button.dart';

class SavedMovieScreen extends StatelessWidget {
  const SavedMovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SavedAppBar(),
        body: SingleChildScrollView(
          child: Container(
            width: gWidth,
            height: gHeight,
            margin: const EdgeInsets.all(10),
            child: GetBuilder<SavedController>(builder: (context) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Get.find<SavedController>().listOfSaved.isEmpty
                        ? FadeInLeft(
                            child: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Nothing to show🙄",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        : Column(
                            children: [
                              MainSection(),
                              const BuyButton(),
                            ],
                          )
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
