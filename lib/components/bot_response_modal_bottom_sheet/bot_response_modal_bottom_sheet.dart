import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/bot_response_modal_bottom_sheet/bot_response_modal_bottom_sheet_controller.dart';
import 'package:sismoney/models/user.dart';

class BotResponseModalBottomSheet {
  static Future show(
    BuildContext context, {
    required int assessmentMonth,
    required int assessmentYear,
  }) async {
    final controller = Get.put(BotResponseModalBottomSheetController());

    final AssessmentQueryDocumentSnapshot? assessment = await controller.fetchAssessment(assessmentMonth, assessmentYear);

    if (assessment!.data.botResponse!.isEmpty) {
      controller.loadBotResponse(assessment);
    } else {
      controller.isLoading.value = false;
      controller.responseText.value = assessment.data.botResponse!;
    }

    if (context.mounted) {
      await showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) {
          return SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: Obx(() {
                if (controller.isLoading.value) {
                  return const Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(height: 16),
                        Text("Aguarde...", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  );
                } else {
                  return Column(
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        margin: const EdgeInsets.only(bottom: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Resposta do Assistente",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: Markdown(
                          data: controller.responseText.value,
                          styleSheet: MarkdownStyleSheet(
                              p: const TextStyle(fontSize: 16),
                              h1: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                              h2: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                              h3: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                              h4: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              h5: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              h6: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Get.back();
                            Get.delete<BotResponseModalBottomSheetController>();
                          },
                          icon: const Icon(Icons.close),
                          label: const Text("Fechar",
                            style: TextStyle(
                              fontSize: 16
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              }),
            ),
          );
        },
      );
    }
  }
}
