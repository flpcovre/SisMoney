import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/routes/router_app.dart';

class SplashPageController extends GetxController with GetTickerProviderStateMixin {
  late final AnimationController imageController;
  late final Animation<double> imageScale;

  late final AnimationController textController;
  late final AnimationController exitController;
  late final Animation<double> fadeOutAnimation;
  late final Animation<Offset> slideOutAnimation;

  final fullText = 'Si\$Money';
  final currentLength = 0.obs;

  bool _animationCompleted = false;
  bool _authCompleted = false;

  @override
  void onInit() {
    super.onInit();

    imageController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    imageScale = CurvedAnimation(
      parent: imageController,
      curve: Curves.elasticOut,
    );

    imageController.forward();

    textController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 50 * fullText.length),
    )..addListener(() {
      currentLength.value = (textController.value * fullText.length).floor();
      if (textController.isCompleted) _onAnimationComplete();
    });

    Future.delayed(Duration(seconds: 1), () => textController.forward());

    exitController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    fadeOutAnimation = CurvedAnimation(
      parent: exitController,
      curve: Curves.easeOut,
    );

    slideOutAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.0, -1.0),
    ).animate(CurvedAnimation(parent: exitController, curve: Curves.easeInOut));

    _simulateAuth();
  }

  Future<void> _simulateAuth() async {
    await Future.delayed(Duration(seconds: 2));
    _onAuthComplete();
  }

  void _onAnimationComplete() {
    _animationCompleted = true;
    _checkIfReadyToExit();
  }

  void _onAuthComplete() {
    _authCompleted = true;
    _checkIfReadyToExit();
  }

  Future<void> _checkIfReadyToExit() async {
    if (_animationCompleted && _authCompleted) {
      await Future.delayed(Duration(seconds: 1));
      _startExitAnimation();
    }
  }

  void _startExitAnimation() {
    exitController.forward().whenComplete(() {
      Get.toNamed(RouterApp.questions);
    });
  }

  @override
  void onClose() {
    imageController.dispose();
    textController.dispose();
    exitController.dispose();
    super.onClose();
  }
}