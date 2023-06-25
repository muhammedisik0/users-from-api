import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/user.png',
      width: width,
    );
  }
}
