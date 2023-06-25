import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../pages/user_details_page.dart';
import 'user_image._widget.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        onTap: () => onTap(context),
        behavior: HitTestBehavior.translucent,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            userImage,
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  userName,
                  const SizedBox(height: 8),
                  userBs,
                ],
              ),
            ),
            const SizedBox(width: 12),
            userId,
          ],
        ),
      ),
    );
  }

  Widget get userImage => const UserImage(width: 50);

  Widget get userName {
    return Text(
      user.name,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color(0xFF3D3D3D),
        fontSize: 16,
        fontFamily: 'Sora',
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
      ),
    );
  }

  Widget get userBs {
    return SizedBox(
      width: double.infinity,
      child: Text(
        user.company.bs,
        style: const TextStyle(
          color: Color(0xFF636363),
          fontSize: 11,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
        ),
      ),
    );
  }

  Widget get userId {
    return Container(
      padding: const EdgeInsets.only(top: 3, left: 7, right: 6, bottom: 3),
      decoration: ShapeDecoration(
        color: const Color(0xFF5A0FC8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Text(
        '${user.id}',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11,
          fontFamily: 'Sora',
          fontWeight: FontWeight.w600,
          letterSpacing: 0.15,
        ),
      ),
    );
  }

  void onTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => UserDetailsPage(user: user),
      ),
    );
  }
}
