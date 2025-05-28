import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/income_modal_bottom_sheet/income_modal_bottom_sheet_controller.dart';
import 'package:sismoney/utils/formatters.dart';

class IncomeModalBottomSheet {
  static Future show(BuildContext context) async {
    final controller = Get.put(IncomeModalBottomSheetController());

    Widget buildInputField({
      required String label,
      required IconData icon,
      required Widget inputWidget,
      VoidCallback? onTap,
    }) {
      final content = Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.grey[200], size: 25),
          const SizedBox(width: 14),
          Expanded(child: inputWidget),
        ],
      );

      return InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              content,
            ],
          ),
        ),
      );
    }

    await showModalBottomSheet(
      backgroundColor: Colors.red[200],
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        final height = MediaQuery.of(context).size.height * 0.85;

        return SizedBox(
          height: height,
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 16,
                      left: 16,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: controller.amountController,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                    decimal: true,
                                  ),
                              textAlign: TextAlign.right,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 48,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: '0.00',
                                hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 48,
                                  fontWeight: FontWeight.bold,
                                ),
                                isCollapsed: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue[200]),
                  child: Column(
                    children: [
                      const SizedBox(height: 18),
                      buildInputField(
                        label: 'Descrição',
                        icon: Icons.description,
                        inputWidget: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Adicione uma descrição',
                            hintStyle: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(height: 1, thickness: 1, color: Colors.white38),
                      buildInputField(
                        label: 'Data',
                        icon: Icons.calendar_month,
                        inputWidget: Obx(() {
                          final date = controller.selectedDate.value;
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              date != null
                                  ? toDate(date)
                                  : 'Selecione uma data',
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                            ),
                          );
                        }),
                        onTap: () async {
                          final selectedDates =
                              await showCalendarDatePicker2Dialog(
                                context: context,
                                config:
                                    CalendarDatePicker2WithActionButtonsConfig(),
                                dialogSize: const Size(325, 400),
                                value:
                                    controller.selectedDate.value == null
                                        ? []
                                        : [controller.selectedDate.value],
                                borderRadius: BorderRadius.circular(15),
                              );

                          if (selectedDates != null &&
                              selectedDates.isNotEmpty) {
                            controller.setDate(selectedDates[0]);
                          }
                        },
                      ),
                      Divider(height: 1, thickness: 1, color: Colors.white38),
                      buildInputField(
                        label: 'Tipo',
                        icon: Icons.money,
                        inputWidget: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Selecione um Tipo',
                            hintStyle: TextStyle(
                              color: Colors.grey[200],
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                          ),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      Divider(height: 1, thickness: 1, color: Colors.white38),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
