import "package:flutter/material.dart";

class ProgressBar extends StatelessWidget {
  final double left;
  ProgressBar({required this.left});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      left: left,
      child: Container(
        width: 30,
        height: 10,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
