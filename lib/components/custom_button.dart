import "package:flutter/material.dart";

class CustomButton extends StatelessWidget {
  final Widget content;
  CustomButton({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff3c7029),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(56.0),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        child: content,
        onPressed: () {},
      ),
    );
  }
}
