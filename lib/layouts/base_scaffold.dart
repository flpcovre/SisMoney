import 'package:flutter/material.dart';
import 'package:sismoney/components/base_appbar.dart';
import 'package:sismoney/components/base_drawer/base_drawer.dart';

class BaseScaffold extends StatelessWidget {
  final Widget body;
  final Widget? floatingActionButton;

  const BaseScaffold({
    super.key,
    required this.body,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(), 
      drawer: BaseDrawer(), 
      body: body,
      floatingActionButton: floatingActionButton,
    );
  }
}
