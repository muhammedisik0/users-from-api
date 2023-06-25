import 'package:flutter/material.dart';

class UserDetailsTextWidget extends StatelessWidget {
  const UserDetailsTextWidget({
    Key? key,
    required this.detail,
    required this.field,
  }) : super(key: key);

  final String detail;
  final String field;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: detail,
            style: const TextStyle(
              color: Color(0xFF3D3D3D),
              fontSize: 12,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
              letterSpacing: 0.40,
            ),
          ),
          TextSpan(
            text: field,
            style: const TextStyle(
              color: Color(0xFF3D3D3D),
              fontSize: 12,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w400,
              letterSpacing: 0.40,
            ),
          ),
        ],
      ),
    );
  }
}
