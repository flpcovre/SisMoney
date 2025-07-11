import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/base_dialog.dart';
import 'package:sismoney/components/bot_response_modal_bottom_sheet/bot_response_modal_bottom_sheet.dart';
import 'package:sismoney/components/header_card.dart';
import 'package:sismoney/components/income_modal_bottom_sheet/income_modal_bottom_sheet.dart';
import 'package:sismoney/components/skeletons/card_skeleton.dart';
import 'package:sismoney/layouts/slivers_scaffold.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/pages/income/income_page_controller.dart';

class IncomePage extends StatelessWidget {
  final IncomePageController controller = Get.put(IncomePageController());

  final AssessmentQueryDocumentSnapshot assessmentSnapshot;
  final String title;

  IncomePage({super.key})
    : assessmentSnapshot = (Get.arguments as Map<String, dynamic>)['snapshot'],
      title = (Get.arguments as Map<String, dynamic>)['title'];

  Widget _buildEmptyIncomes() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 35,
                offset: Offset(0, 8),
              ),
            ],
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Image.asset('lib/assets/img/empty-wallet.png', width: 50),
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          width: 260,
          child: Text(
            'Você ainda não realizou lançamentos nesse mês',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  Widget _buildListItem(BuildContext context, List<Income> incomesOfDay) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dia ${incomesOfDay.first.day}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Divider(),
                ...incomesOfDay.map(
                  (income) => ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    contentPadding: EdgeInsets.zero,
                    title: Text(income.description),
                    trailing: Text(
                      'R\$ ${income.cast.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 15,
                        color:
                            income.type == 'profit'
                                ? Colors.green
                                : Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controller.initialize(assessmentSnapshot.data.inProgress);
    });

    return SliversScaffold(
      title: HeaderCard(text: title, icon: Icons.calendar_month),
      slivers: [
        StreamBuilder(
          stream: controller.fetchIncomes(assessmentSnapshot),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const SliverToBoxAdapter(child: CardSkeleton());
            }

            if (snapshot.hasError) {
              return SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Erro: ${snapshot.error}'),
                ),
              );
            }

            final incomesDocs = snapshot.data;

            if (incomesDocs == null || incomesDocs.isEmpty) {
              return SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: _buildEmptyIncomes(),
                ),
              );
            }

            final incomes = incomesDocs.map((doc) => doc.data).toList();
            final incomesGroupedByDay = groupBy(
              incomes,
              (Income income) => income.day,
            );
            final sortedDays =
                incomesGroupedByDay.keys.toList()
                  ..sort((a, b) => b.compareTo(a));

            return SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final day = sortedDays[index];
                final incomesOfDay = incomesGroupedByDay[day]!;

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: _buildListItem(context, incomesOfDay),
                );
              }, childCount: sortedDays.length),
            );
          },
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Obx(() => ElevatedButton(
                onPressed: () async {
                  if (controller.inProgress.value) {
                    await BaseDialog.show(
                      context,
                      title: 'Atenção!',
                      message: 'Você realmente deseja finalizar esse mês? Não será possível reabri-lo depois.',
                      type: 'choice',
                      icon: Icons.warning_amber_rounded,
                      iconColor: Colors.orange,
                      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      messageStyle: TextStyle(fontSize: 16),
                      onConfirm: () async {
                        await controller.endAssessment(assessmentSnapshot);
                        await BotResponseModalBottomSheet.show(
                          context,
                          assessmentMonth: assessmentSnapshot.data.month,
                          assessmentYear: assessmentSnapshot.data.year
                        );
                      },
                    );
                  } else {
                    await BotResponseModalBottomSheet.show(
                      context,
                      assessmentMonth: assessmentSnapshot.data.month,
                      assessmentYear: assessmentSnapshot.data.year
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: controller.inProgress.value ? Colors.red[200] : Colors.green[300],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                child: Text(
                  controller.inProgress.value ? 'Finalizar o Mês' : 'Este mês já foi finalizado',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
            
            )
            
            
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(height: 28),
        )
      ],
      floatingActionButtonOnPressed: () {
        IncomeModalBottomSheet.show(context);
      },
    );
  }
}
