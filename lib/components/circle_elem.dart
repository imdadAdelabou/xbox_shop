import "package:flutter/material.dart";

class CircleElem extends StatelessWidget {
  const CircleElem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0,
      height: 20.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
    );
  }
}
