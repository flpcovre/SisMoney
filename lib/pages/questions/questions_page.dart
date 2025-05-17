import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/layouts/gradient_scaffold.dart';
import 'package:sismoney/pages/questions/questions_page_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QuestionsPage extends StatelessWidget {
  QuestionsPage({super.key});

  final QuestionsPageController controller = QuestionsPageController();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            const Spacer(),
            Image.asset('lib/assets/img/robot.png', width: 100),
            const SizedBox(height: 16),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: PageView.builder(
                controller: pageController,
                itemCount: controller.questions.length,
                onPageChanged: (index) {
                  controller.pageIndex.value = index;
                },
                itemBuilder: (context, index) {
                  final question = controller.questions[index];
                  final alternativas = question['alternativas'] as List<String>;

                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            question['pergunta'] as String,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          ...alternativas.map((alt) {
                            return Obx(() {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: RadioListTile<String>(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  title: Text(alt),
                                  value: alt,
                                  groupValue: controller.answers[index],
                                  onChanged: (value) =>
                                      controller.answers[index] = value!,
                                ),
                              );
                            });
                          }),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Spacer(), // Adiciona espaço flexível na base
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SmoothPageIndicator(
                controller: pageController,
                count: controller.questions.length,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  activeDotColor: Theme.of(context).primaryColor,
                ),
                onDotClicked: (index) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}