import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/bot_response_modal_bottom_sheet/bot_response_modal_bottom_sheet_controller.dart';
import 'package:sismoney/models/user.dart';

class BotResponseModalBottomSheet {
  static Future show(
    BuildContext context,
    { required AssessmentQueryDocumentSnapshot assessment }
  ) async {

    final BotResponseModalBottomSheetController controller = Get.put(BotResponseModalBottomSheetController());

    controller.simulateLoading(assessment);

    await showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Center(
            child: Obx(() {
              if (controller.isLoading.value) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text("Carregando..."),
                  ],
                );
              } else {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Carregamento concluído!"),
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                        Get.delete<BotResponseModalBottomSheetController>();
                      },
                      child: Text("Fechar"),
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