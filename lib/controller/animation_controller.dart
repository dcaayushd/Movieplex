import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllerAnimation extends GetxController with GetTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  late final AnimationController _controllerScale =
      AnimationController(duration: const Duration(seconds: 20), vsync: this)
        ..repeat(reverse: true);

  late final Animation<double> _animationScale = Tween<double>(
    begin: 1.0,
    end: 1.5,
  ).animate(CurvedAnimation(parent: _controllerScale, curve: Curves.linear));

  void runAnime() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
    _controllerScale.repeat(reverse: true);
  }

  void stopAnime() {
    _controller.stop();
    _controllerScale.stop();
  }

  Animation<double> get opacityAnime {
    return _animation;
  }

  Animation<double> get scaleAnime {
    return _animationScale;
  }

  @override
  void dispose() {
    _controller.dispose();
    _controllerScale.dispose();
    super.dispose();
  }
}