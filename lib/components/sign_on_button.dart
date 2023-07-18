import 'package:flutter/material.dart';

class BuildSignOnButton extends StatelessWidget {
  const BuildSignOnButton({
    super.key,
    required this.textColor,
    required this.iconColor,
    required this.backgroundColor,
    this.onPressed,
  });

  final Color textColor;
  final Color iconColor;
  final Color backgroundColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width / 2.7,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock,
            size: 30,
            color: iconColor,
          ),
          TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color?>(
                Colors.transparent,
              ),
            ),
            child: Text(
              'Sign on',
              style: TextStyle(color: textColor, fontSize: 18),
              // style: TextStyle(col),
            ),
          ),
        ],
      ),
    );
  }
}
