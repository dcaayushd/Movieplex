import 'package:flutter/material.dart';

import '../home/widget/movie_card.dart';
import '../../utils/constants.dart';
import './widget/fade.dart';
import './widget/main_pic.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: gHeight,
          child: Stack(
            children: [
              MainPic(),
              const FadeWidget(),
              MovieCard(),
            ],
          ),
        ),
      ),
    );
  }
}
