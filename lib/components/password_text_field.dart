import 'package:flutter/material.dart';

class BuildPasswordWidget extends StatefulWidget {
  const BuildPasswordWidget({
    super.key,
    required this.passwordController,
  });

  final TextEditingController passwordController;

  @override
  State<BuildPasswordWidget> createState() => _BuildPasswordWidgetState();
}

class _BuildPasswordWidgetState extends State<BuildPasswordWidget> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: TextFormField(
        controller: widget.passwordController,
        obscureText: !isVisible,
        decoration: InputDecoration(
          hintText: 'Password',
          contentPadding: const EdgeInsets.only(
            left: 10.0,
            top: 8.0,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            icon: Icon(
              isVisible
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
