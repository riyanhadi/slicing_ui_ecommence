import 'package:flutter/material.dart';

class CustomMenuRow extends StatefulWidget {
  final List<dynamic> itemList;
  final Function(dynamic) onItemSelected;

  const CustomMenuRow({
    Key? key,
    required this.itemList,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  CustomMenuRowState createState() => CustomMenuRowState();
}

class CustomMenuRowState extends State<CustomMenuRow> {
  dynamic selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = widget.itemList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.itemList.length,
        (index) {
          final item = widget.itemList[index];
          final bool selected = item == selectedItem;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedItem = item;
              });

              widget.onItemSelected(item);
            },
            child: Container(
              width: 80,
              height: 80,
              margin: const EdgeInsets.only(right: 12.5),
              decoration: BoxDecoration(
                color: selected ? const Color(0xffff4f07) : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    item['icon'],
                    color: selected ? Colors.white : Colors.grey[600],
                    size: 40.0,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    item['label'],
                    style: TextStyle(
                      color: selected ? Colors.white : Colors.grey[600],
                      fontSize: 14.0,
                      fontWeight:
                          selected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
