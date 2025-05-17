import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/layouts/gradient_scaffold.dart';
import 'splash_page_controller.dart'; 

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final SplashPageController pageController = Get.put(SplashPageController());

  List<InlineSpan> _buildStyledText(String text, int currentLength) {
    return List.generate(currentLength, (index) {
      final char = text[index];
      final color = char == '\$' ? Colors.green : Color(0XFFF9D647);
      return TextSpan(
        text: char,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: color,
          letterSpacing: 6.0,
          shadows: [
            Shadow(
              offset: Offset(2, 2),
              blurRadius: 1.0,
              color: Color.fromRGBO(0, 0, 0, 0.2),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: FadeTransition(
          opacity: ReverseAnimation(pageController.fadeOutAnimation),
          child: SlideTransition(
            position: pageController.slideOutAnimation,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ScaleTransition(
                  scale: pageController.imageScale,
                  child: Image.asset('lib/assets/img/robot.png', width: 100),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  height: 50,
                  child: Obx(() => RichText(
                        text: TextSpan(
                          children: _buildStyledText(
                            pageController.fullText,
                            pageController.currentLength.value,
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
