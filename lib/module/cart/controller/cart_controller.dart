import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/module/main_navigation/controller/main_navigation_controller.dart';
import 'package:slicing_ui_ecommerce/state_util.dart';
import '../view/cart_view.dart';

class CartController extends State<CartView>
    with TickerProviderStateMixin
    implements MvcController {
  static late CartController instance;
  late CartView view;

  late AnimationController animationController;
  late AnimationController animationController2;
  late Animation<double> slideAnimation;
  late Animation<double> slideAnimation2;

  bool isBlueContainerVisible = true;
  bool isBlueContainerVisible2 = true;

  @override
  void initState() {
    instance = this;
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    slideAnimation = Tween<double>(begin: 0.0, end: -60.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    slideAnimation2 = Tween<double>(begin: 0.0, end: -60.0).animate(
      CurvedAnimation(
        parent: animationController2,
        curve: Curves.easeInOut,
      ),
    );
  }

  void toggleBlueContainer(int containerIndex) {
    if (containerIndex == 0) {
      if (animationController.status == AnimationStatus.completed) {
        animationController.reverse();
      } else {
        animationController.forward();
      }
      setState(() {
        isBlueContainerVisible = !isBlueContainerVisible;
      });
    } else {
      if (animationController2.status == AnimationStatus.completed) {
        animationController2.reverse();
      } else {
        animationController2.forward();
      }
      setState(() {
        isBlueContainerVisible2 = !isBlueContainerVisible;
      });
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void goBackToHome() {
    MainNavigationController controller = MainNavigationController.instance;
    controller.updateIndex(0);
  }
}
