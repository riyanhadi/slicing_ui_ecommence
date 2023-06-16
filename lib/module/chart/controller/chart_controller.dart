import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/state_util.dart';
import '../view/chart_view.dart';

class ChartController extends State<ChartView> implements MvcController {
  static late ChartController instance;
  late ChartView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}