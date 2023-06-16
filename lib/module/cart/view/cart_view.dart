import 'package:flutter/material.dart';
import 'package:slicing_ui_ecommerce/core.dart';
import '../controller/cart_controller.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  Widget build(context, CartController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: InkWell(
            onTap: () => controller.goBackToHome(),
            child: const CircleAvatar(
              backgroundColor: Colors.black,
              radius: 12.0,
              child: Icon(
                Icons.arrow_left_rounded,
                size: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 12,
            ),
            child: Badge(
              backgroundColor: Colors.black,
              label: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "My Cart",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      color: Colors.black,
                    ),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Icon(
                          Icons.delete,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  AnimatedBuilder(
                    animation: controller.slideAnimation,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(controller.slideAnimation.value, 0),
                        child: GestureDetector(
                          onTap: () => controller.toggleBlueContainer(0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(12.0),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Sepatu Casual",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "Sepatu",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              "150000",
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  40.0,
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.remove,
                                                    size: 14.0,
                                                  ),
                                                ),
                                                const Text(
                                                  "1",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.add,
                                                    size: 14.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 105,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 6,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      color: Colors.black,
                    ),
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.0),
                        child: Icon(
                          Icons.delete,
                          size: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  AnimatedBuilder(
                    animation: controller.slideAnimation2,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(controller.slideAnimation2.value, 0),
                        child: GestureDetector(
                          onTap: () => controller.toggleBlueContainer(1),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(12.0),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        "https://images.unsplash.com/photo-1601200190687-4fec4d91c388?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=725&q=80",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        12.0,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Kaos Polos",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "Kaos",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Expanded(
                                            child: Text(
                                              "50000",
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius:
                                                  const BorderRadius.all(
                                                Radius.circular(
                                                  40.0,
                                                ),
                                              ),
                                            ),
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.remove,
                                                    size: 14.0,
                                                  ),
                                                ),
                                                const Text(
                                                  "1",
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    Icons.add,
                                                    size: 14.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 5,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      15.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                          filled: false,
                          hintText: "Seach",
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: const Text("Apply"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20.0),
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total (2 item) :",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  "200.000",
                  style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 58,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Proceed to Checkout",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_right_rounded,
                        size: 40.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CartView> createState() => CartController();
}
