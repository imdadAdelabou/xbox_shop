import "package:flutter/material.dart";

class ProgressBar extends StatelessWidget {
  ProgressBar();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
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
