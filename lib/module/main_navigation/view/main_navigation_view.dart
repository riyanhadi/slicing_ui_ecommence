import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    Widget buildNavItem(IconData icon, String label, int index) {
      return controller.selectedIndex == index
          ? GestureDetector(
              onTap: () => controller.updateIndex(index),
              child: Container(
                padding: const EdgeInsets.only(right: 15),
                decoration: const BoxDecoration(
                  color: Color(0xffeeeeee),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: const Color(0xff000000),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      label,
                      style: const TextStyle(
                        fontSize: 16.0,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            )
          : IconButton(
              onPressed: () => controller.updateIndex(index),
              icon: Icon(
                icon,
                color: const Color(0xff000000),
              ),
            );
    }

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            const ChartView(),
            Container(
              color: Colors.red,
            ),
            Container(),
          ],
        ),
        bottomNavigationBar: Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildNavItem(Icons.home_filled, "Home", 0),
              buildNavItem(Icons.shopping_cart, "My Chart", 1),
              buildNavItem(Icons.notifications, "Notification", 2),
              buildNavItem(Icons.person, "Profile", 3),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
