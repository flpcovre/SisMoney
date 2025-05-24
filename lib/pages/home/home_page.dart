import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sismoney/components/header_card.dart';
import 'package:sismoney/components/skeletons/card_skeleton.dart';
import 'package:sismoney/layouts/base_scaffold.dart';
import 'package:sismoney/models/user.dart';
import 'package:sismoney/pages/home/home_page_controller.dart';
import 'package:sismoney/routes/router_app.dart';
import 'package:sismoney/utils/formatters.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomePageController controller = Get.put(HomePageController());

  Widget _buildEmptyHome() {
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
              child: Image.asset('lib/assets/img/empty-box.png', width: 80),
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            width: 260,
            child: Text(
              'Você ainda não realizou avaliações',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView(context, List<AssessmentQueryDocumentSnapshot> assessmentDocs) {
    return Expanded(
      child: ListView.builder(
        itemCount: assessmentDocs.length,
        itemBuilder: (context, index) {
          final assessmentSnapshot = assessmentDocs[index];
          final assessment = assessmentSnapshot.data;

          return InkWell(
            onTap: () {
              Get.toNamed(RouterApp.income, arguments: assessmentSnapshot);
            },
            borderRadius: BorderRadius.circular(16),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
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
                            style: Theme.of(context).textTheme.titleMedium
                                ?.copyWith(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            assessment.inProgress
                                ? 'Em Andamento'
                                : 'Finalizado',
                            style: TextStyle(color: Colors.grey),
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
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: StreamBuilder(
        stream: controller.getAssessments(),
        builder: (context, snapshot) {
          final assessments = snapshot.data;

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CardSkeleton();
          }

          if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          }

          if (assessments == null || assessments.isEmpty) {
            return _buildEmptyHome();
          }

          return Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderCard(
                  text: 'Suas Avaliações',
                  icon: Icons.star_rate_rounded,
                ),
                SizedBox(height: 15),
                _buildListView(context, assessments),
              ],
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0XFF94B9FF),
        onPressed: () {
          controller.addAssessment();
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
