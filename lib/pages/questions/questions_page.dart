import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/app_icon.dart';
import 'package:sismoney/layouts/gradient_scaffold.dart';
import 'package:sismoney/pages/questions/questions_page_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class QuestionsPage extends StatelessWidget {
  QuestionsPage({super.key});

  final QuestionsPageController controller = Get.put(QuestionsPageController());
  final PageController pageController = Get.put(PageController());
  
  @override
  Widget build(BuildContext context) {
    return GradientScaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Obx(() {
              final isFirstPage = controller.pageIndex.value == 0;
              final offsetY = isFirstPage ? 1600.0 : 700.0;
              return AnimatedSlide(
                offset: Offset(0, offsetY / 1000),
                duration: Duration(milliseconds: 200),
                curve: Curves.easeOut,
                child: AppIcon(width: 115),
              );
            }),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: PageView.builder(
                controller: pageController,
                itemCount: controller.questions.length + 1,
                onPageChanged: (index) {
                  controller.pageIndex.value = index;
                },
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Olá, seja bem vido ao \$isMoney',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20),
                          Text(
                            'Coletaremos algumas informações para traçarmos um perfil para você!',
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }

                  final question = controller.questions[index - 1];
                  final alternativas =
                      question['alternatives'] as List<Map<String, dynamic>>;

                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 0.65,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                question['description'] as String,
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
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 2,
                                    ),
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
                                      activeColor: Color(0xFF5271FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                            horizontal: 12,
                                          ),
                                      title: Text(alt['description']),
                                      value: alt['id'].toString(),
                                      groupValue:
                                          controller.answers[question['id']],
                                      onChanged: (value) {
                                        controller.answers[question['id']
                                                as int] =
                                            value!;
                                        controller.checkIfQuestionsAnswered();
                                      },
                                    ),
                                  );
                                });
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Obx(() {
              return SizedBox(
                height: 60.0,
                width: 170,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 200),
                  opacity: controller.questionsAnswered.value ? 1.0 : 0.0,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF5271FF),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {},
                    child: Text('Tudo pronto!', style: TextStyle(fontSize: 18)),
                  ),
                ),
              );
            }),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SmoothPageIndicator(
                controller: pageController,
                count: controller.questions.length + 1,
                effect: WormEffect(
                  dotHeight: 12,
                  dotWidth: 12,
                  activeDotColor: Color(0xFF5271FF),
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
