import 'package:another_flushbar/flushbar.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/income_modal_bottom_sheet/income_modal_bottom_sheet_controller.dart';
import 'package:sismoney/utils/formatters.dart';

class IncomeModalBottomSheet {
  static Future show(BuildContext context, ) async {
    final List<String> dropdownItems = ['Despesa', 'Receita'];

    final controller = Get.put(IncomeModalBottomSheetController());

    controller.selectedValue.value = dropdownItems[0];
    controller.selectedDate.value = DateTime.now().toUtc().subtract(
      Duration(hours: 3),
    );
    controller.formError.value = '';
    controller.amountController.text = '';
    controller.descriptionController.text = '';

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
      context: context,
      isScrollControlled: true,
      builder: (context) {
        final height = MediaQuery.of(context).size.height * 0.85;

        return Obx(() {
          final backgroundColor =
              controller.selectedValue.value == 'Despesa'
                  ? Colors.red[200]
                  : Colors.green[200];

          return Container(
            height: height,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
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
                                validator: (value) {
                                  if (value == '' || value == null) {
                                    return 'Você precisa preencher um valor';
                                  }
                                  return null;
                                },
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
                    decoration: BoxDecoration(color: Colors.blue[300]),
                    child: Column(
                      children: [
                        const SizedBox(height: 18),
                        Obx(() {
                          if (controller.formError.value.isEmpty) {
                            return SizedBox.shrink(); // ou return Container();
                          }
                          return Center(
                            child: Text(
                              controller.formError.value,
                              style: TextStyle(color: Colors.red),
                            ),
                          );
                        }),

                        buildInputField(
                          label: 'Descrição',
                          icon: Icons.description,
                          inputWidget: TextFormField(
                            controller: controller.descriptionController,
                            maxLength: 30,
                            buildCounter:
                                (
                                  BuildContext context, {
                                  int? currentLength,
                                  int? maxLength,
                                  bool? isFocused,
                                }) => null,
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
                            final DateTime? date =
                                controller.selectedDate.value;

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
                                  dialogBackgroundColor: Colors.blue[200],
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
                          inputWidget: Obx(
                            () => DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                isExpanded: true,
                                items:
                                    ['Despesa', 'Receita']
                                        .map(
                                          (String item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(
                                                  item,
                                                  style: TextStyle(
                                                    color: Colors.grey[200],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17,
                                                  ),
                                                ),
                                              ),
                                        )
                                        .toList(),
                                value: controller.selectedValue.value,
                                onChanged: (String? value) {
                                  controller.selectedValue.value =
                                      value as String;
                                },
                                dropdownStyleData: DropdownStyleData(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[200],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),

                        Divider(height: 1, thickness: 1, color: Colors.white38),
                        Spacer(),

                        SizedBox(
                          width: 70,
                          height: 70,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.green[300],
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  blurRadius: 8,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 32,
                              ),
                              onPressed: () {
                                if (controller.submitForm()) {
                                  Navigator.pop(context);

                                  Flushbar(
                                    margin: EdgeInsets.symmetric(
                                      vertical: 18,
                                      horizontal: 12,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                    icon: Container(
                                      width: 26,
                                      height: 26,
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: Colors.green,
                                        size: 20,
                                      ),
                                    ),
                                    message:
                                        'Lançamento adicionado com sucesso',
                                    messageSize: 15,
                                    messageColor: Colors.black,
                                    backgroundColor: const Color.fromARGB(
                                      255,
                                      115,
                                      241,
                                      120,
                                    ),
                                    isDismissible: false,
                                    duration: Duration(seconds: 2),
                                  ).show(context);
                                }
                              },
                            ),
                          ),
                        ),

                        SizedBox(height: 48),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
      },
    );
  }
}
