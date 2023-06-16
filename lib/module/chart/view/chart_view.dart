import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/core.dart';
import '../controller/chart_controller.dart';

class ChartView extends StatefulWidget {
  const ChartView({Key? key}) : super(key: key);

  Widget build(context, ChartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chart"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<ChartView> createState() => ChartController();
}
