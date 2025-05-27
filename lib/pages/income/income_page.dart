import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/header_card.dart';
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
                            income.type == 'revenue'
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

  void _buildModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox.expand(
          child: Container(
            color: Colors.blue[200],
            child: Column(
              children: [
                Container(height: 150, color: Colors.red[200]),

                const SizedBox(height: 4),

                ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Descrição',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Icon(Icons.description, color: Colors.grey[200], size: 25),
                          const SizedBox(width: 14),
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Adicione uma descrição',
                                hintStyle: TextStyle(
                                  color: Colors.grey[200],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Divider(
                  height: 1,
                  thickness: 1,
                  color: const Color.fromARGB(92, 255, 255, 255),
                ),
                SizedBox(height: 4),

                
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
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
      ],
      floatingActionButtonOnPressed: () {
        // controller.addIncome(assessmentSnapshot);
        _buildModalBottomSheet(context);
      },
    );
  }
}
