import 'package:slicing_ui_ecommerce/state_util.dart';
import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/core.dart';
import 'package:slicing_ui_ecommerce/shared/util/theme/theme_ecommerce.dart';

void main() async {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = getEcommerceTheme();

    return MaterialApp(
      title: 'Ecommerce',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const MainNavigationView(),
    );
  }
}
