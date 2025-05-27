import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/header_card.dart';
import 'package:sismoney/components/skeletons/card_skeleton.dart';
import 'package:sismoney/layouts/slivers_scaffold.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/pages/home/home_page_controller.dart';
import 'package:sismoney/routes/router_app.dart';
import 'package:sismoney/utils/formatters.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController controller = Get.put(HomePageController());

  Widget _buildEmptyHome() {
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
            child: Image.asset('lib/assets/img/empty-box.png', width: 50),
          ),
        ),
        SizedBox(height: 16),
        SizedBox(
          width: 260,
          child: Text(
            'Você ainda não realizou avaliações',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  Widget _buildListItem(
    BuildContext context,
    AssessmentQueryDocumentSnapshot snapshot,
  ) {
    final assessment = snapshot.data;

    return InkWell(
      onTap: () {
        Get.toNamed(
          RouterApp.income,
          arguments: {
            'snapshot': snapshot,
            'title': '${numberToMonth(assessment.month)} de ${assessment.year}',
          },
        );
      },
      borderRadius: BorderRadius.circular(16),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(Icons.bar_chart, size: 36, color: Colors.blueAccent),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${numberToMonth(assessment.month)} de ${assessment.year}',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      assessment.inProgress ? 'Em Andamento' : 'Finalizado',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '80%',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge?.copyWith(color: Colors.green),
              ),
              const SizedBox(width: 15),
              const Icon(Icons.arrow_forward_ios, size: 16),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliversScaffold(
      title: HeaderCard(
        text: 'Suas Avaliações', 
        icon: Icons.star
      ),
      slivers: [
        StreamBuilder(
          stream: controller.getAssessments(),
          builder: (context, snapshot) {
            final assessments = snapshot.data;

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

            if (assessments == null || assessments.isEmpty) {
              return SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: _buildEmptyHome(),
                ),
              );
            }

            return SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final snapshot = assessments[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 2,
                  ),
                  child: _buildListItem(context, snapshot),
                );
              }, childCount: assessments.length),
            );
          },
        ),
      ],
      floatingActionButtonOnPressed: () {
        controller.addAssessment();
      },
    );
  }
}
