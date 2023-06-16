import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:slicing_ui_ecommerce/core.dart';
import 'package:slicing_ui_ecommerce/shared/widget/circle_category_picker.dart';
import 'package:slicing_ui_ecommerce/shared/widget/color_picker.dart';

class ProductDetailView extends StatefulWidget {
  final Map item;
  const ProductDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  Widget build(context, ProductDetailController controller) {
    controller.view = this;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: InkWell(
            onTap: () => Get.back(),
            child: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Icon(
                Icons.arrow_left_rounded,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 12,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 20,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      item["photo"],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height * 0.45) - 30,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(20.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item["product_name"],
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                item["category"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: const BorderRadius.all(
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
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemSize: 16.0,
                            onRatingUpdate: (rating) {},
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            "(320 Review)",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      QCircleCategoryPicker(
                        label: "Size",
                        items: const [
                          {
                            "label": "S",
                            "value": "S",
                          },
                          {
                            "label": "M",
                            "value": "M",
                          },
                          {
                            "label": "L",
                            "value": "L",
                          },
                          {
                            "label": "XL",
                            "value": "XL",
                          },
                          {
                            "label": "XXL",
                            "value": "XXL",
                          }
                        ],
                        // validator: Validator.required,
                        value: "S",
                        onChanged: (index, label, value, item) {},
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      QColorPicker(
                        label: "Avaliable in stok",
                        items: const [
                          {
                            "label": Colors.white,
                            "value": "white",
                          },
                          {
                            "label": Colors.black,
                            "value": "black",
                          },
                          {
                            "label": Colors.grey,
                            "value": "grey",
                          },
                          {
                            "label": Colors.orange,
                            "value": "orange",
                          },
                          {
                            "label": Colors.red,
                            "value": "red",
                          }
                        ],
                        // validator: Validator.required,
                        value: "white",
                        onChanged: (index, label, value, item) {},
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        item["description"],
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Total Price",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  "${item["price"]}",
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 50.0,
            ),
            Expanded(
              child: SizedBox(
                height: 48,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.shopping_bag_outlined),
                  label: const Text(
                    "Add to cart",
                    style: TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<ProductDetailView> createState() => ProductDetailController();
}
