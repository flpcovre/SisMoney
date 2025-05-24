import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/header_card.dart';
import 'package:sismoney/components/skeletons/card_skeleton.dart';
import 'package:sismoney/layouts/base_scaffold.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/pages/income/income_page_controller.dart';

class IncomePage extends StatelessWidget {
  IncomePage({super.key});

  final IncomePageController controller = Get.put(IncomePageController());
  final AssessmentQueryDocumentSnapshot assessmentSnapshot = Get.arguments;

  Widget _buildEmptyIncomes() {
    return Center(
      child: Column(
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
              child: Image.asset('lib/assets/img/empty-wallet.png', width: 60),
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            width: 260,
            child: Text(
              'Você ainda não realizou lançamentos nesse mês',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    return StreamBuilder(
      stream: controller.fetchIncomes(assessmentSnapshot),
      builder: (context, snapshot) {
        final incomesDocs = snapshot.data;

        if (snapshot.connectionState == ConnectionState.waiting) {
          return CardSkeleton();
        }

        if (snapshot.hasError) {
          return Center(child: Text('Erro: ${snapshot.error}'));
        }

        if (incomesDocs == null || incomesDocs.isEmpty) {
          return _buildEmptyIncomes();
        }

        final incomes = incomesDocs.map((doc) => doc.data).toList();
        final incomesGroupedByDay = groupBy(incomes, (Income income) => income.day);
        final sortedDays = incomesGroupedByDay.keys.toList()
        ..sort((a, b) => b.compareTo(a));

        return ListView.builder(
          itemCount: sortedDays.length,
          itemBuilder: (context, index) {
            final day = sortedDays[index];
            final incomesOfDay = incomesGroupedByDay[day]!;

            return Column(
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
                          'Dia ${day}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Divider(),
                        ...incomesOfDay.map((income) => ListTile(
                        visualDensity: VisualDensity(vertical: -4),
                        contentPadding: EdgeInsets.zero,
                        title: Text(income.description),
                        trailing: Text(
                          'R\$ ${income.cast.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 15,
                            color: income.type == 'revenue' ? Colors.green : Colors.red,
                          ),
                        ),
                      )),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderCard(text: 'Junho de 2025', icon: Icons.calendar_month),
            SizedBox(height: 15),
            Expanded(child: _buildListView()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XFF94B9FF),
        onPressed: () {
          controller.addIncome(assessmentSnapshot);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
