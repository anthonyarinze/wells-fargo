import 'package:flutter/material.dart';

class BuildTextButton extends StatelessWidget {
  const BuildTextButton({
    super.key,
    required this.onPressed,
  });

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.7,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 1.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(30.0),
        ),
      ),
      child: TextButton(
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
        child: const Text(
          'Enroll',
          style: TextStyle(color: Colors.black, fontSize: 18),
          // style: TextStyle(col),
        ),
      ),
    );
  }
}
