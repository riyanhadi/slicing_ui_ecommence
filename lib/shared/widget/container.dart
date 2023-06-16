import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  AnimatedContainerExampleState createState() =>
      AnimatedContainerExampleState();
}

class AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            left: isExpanded ? -150 : 0,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.blue,
              child: const Icon(Icons.menu, color: Colors.white),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            right: isExpanded ? -150 : 0,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Usage:
// AnimatedContainerExample(),
