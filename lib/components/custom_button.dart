import "package:flutter/material.dart";

class CustomButton extends StatelessWidget {
  final Widget content;
  final Function() action;
  CustomButton({
    required this.content,
    required this.action,
  });

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
              bottomRight: Radius.circular(35),
            ),
          ),
        ),
        child: content,
        onPressed: action,
      ),
    );
  }
}
