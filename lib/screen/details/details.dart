import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/animation_controller.dart';
import '../../utils/constants.dart';
import './widget/appbar.dart';
import './widget/date_selector.dart';
import './widget/description_movie.dart';
import './widget/dir_wr_info_details.dart';
import './widget/fade_details.dart';
import './widget/image_details.dart';
import './widget/select_date.dart';
import './widget/star_imbd_details.dart';
import './widget/title_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<ControllerAnimation>().stopAnime();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: MyAppBar(),
        body: SizedBox(
          height: gHeight,
          width: gWidth,
          child: Stack(
            children: [
              ImageWidgetDetails(),
              const FadeWidgetDetails(),
              TitleTextDetails(),
              MovieInfoIconDetails(),
              DirAndWrInfo(),
              DescriptionMovieDetails(),
              SelectDateTextAndButton(),
              DateSelectorWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
