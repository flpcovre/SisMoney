import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CardSkeleton extends StatelessWidget {
  const CardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Column(
          children: List.generate(3, (index) {
            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListTile(
                  title: Text('Item number $index as title'),
                  subtitle: const Text('Subtitle here'),
                  trailing: const Icon(Icons.ac_unit, size: 35),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
