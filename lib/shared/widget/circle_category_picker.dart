import 'package:flutter/material.dart';

class QCircleCategoryPicker extends StatefulWidget {
  final List<Map<String, dynamic>> items;
  final String? label;
  final bool? wrapMode;
  final dynamic value;

  final Function(
    Map<String, dynamic> item,
    bool selected,
    Function action,
  )? itemBuilder;

  final Function(
    int index,
    String label,
    dynamic value,
    Map<String, dynamic> item,
  ) onChanged;
  const QCircleCategoryPicker({
    Key? key,
    required this.items,
    required this.onChanged,
    this.itemBuilder,
    this.value,
    this.label,
    this.wrapMode = false,
  }) : super(key: key);

  @override
  State<QCircleCategoryPicker> createState() => _QCircleCategoryPickerState();
}

class _QCircleCategoryPickerState extends State<QCircleCategoryPicker> {
  int selectedIndex = -1;

  updateIndex(newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    var item = widget.items[selectedIndex];
    var index = selectedIndex;
    var label = item["label"];
    var value = item["value"];
    widget.onChanged(index, label, value, item);
  }

  getLabel() {
    if (widget.label == null) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${widget.label}",
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6.0,
        ),
      ],
    );
  }

  @override
  void initState() {
    if (widget.value != null) {
      selectedIndex =
          widget.items.indexWhere((i) => i["value"] == widget.value);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.wrapMode == true) {
      return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getLabel(),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              children: List.generate(widget.items.length, (index) {
                bool selected = selectedIndex == index;
                var item = widget.items[index];

                if (widget.itemBuilder != null) {
                  return widget.itemBuilder!(item, selected, () {
                    updateIndex(index);
                  });
                }

                return InkWell(
                  onTap: () => updateIndex(index),
                  child: Card(
                    color: selected ? Colors.black : null,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item["label"],
                        style: TextStyle(
                          color: selected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      );
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getLabel(),
          SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(widget.items.length, (index) {
                bool selected = selectedIndex == index;
                var item = widget.items[index];

                if (widget.itemBuilder != null) {
                  return widget.itemBuilder!(item, selected, () {
                    updateIndex(index);
                  });
                }

                return InkWell(
                  onTap: () => updateIndex(index),
                  child: Container(
                    margin: const EdgeInsets.only(
                      right: 12.0,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundColor: selected ? Colors.black : Colors.white,
                        child: Text(
                          item["label"],
                          style: TextStyle(
                            fontSize: 12.0,
                            color: selected ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
