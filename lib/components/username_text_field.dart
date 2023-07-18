import 'package:flutter/material.dart';

class BuildUsernameWidget extends StatelessWidget {
  const BuildUsernameWidget({
    super.key,
    required this.usernameController,
  });

  final TextEditingController usernameController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 10.0,
      ),
      child: TextFormField(
        controller: usernameController,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.only(left: 10.0),
        ),
      ),
    );
  }
}
