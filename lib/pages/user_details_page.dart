import 'package:fetch_users_app/widgets/user_image._widget.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../widgets/user_details_text_widget.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: -85,
              top: -95,
              child: Container(
                width: 621,
                height: 367,
                decoration: const ShapeDecoration(
                  color: Color(0xFFAD87E4),
                  shape: OvalBorder(),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 212,
              child: Padding(
                padding: const EdgeInsets.only(left: 45, right: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    profileSection,
                    const SizedBox(height: 24),
                    companySection,
                    const SizedBox(height: 18),
                    contractSection,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get profileSection {
    return Center(
      child: Column(
        children: [
          const UserImage(width: 120),
          const SizedBox(height: 14),
          UserDetailsTextWidget(
            detail: 'Username: ',
            field: user.username,
          ),
          const SizedBox(height: 6),
          UserDetailsTextWidget(
            detail: 'Full Name: ',
            field: user.name,
          ),
          const SizedBox(height: 6),
          UserDetailsTextWidget(
            detail: 'Website: ',
            field: user.website,
          ),
        ],
      ),
    );
  }

  Widget get companySection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company',
          style: titleTextStyle,
        ),
        const SizedBox(height: 6),
        Text(
          user.company.name,
          style: const TextStyle(
            color: Color(0xFF3D3D3D),
            fontSize: 12,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w400,
            letterSpacing: 0.40,
          ),
        ),
        const SizedBox(height: 6),
        UserDetailsTextWidget(
          detail: 'Catch Phrase: ',
          field: user.company.catchPhrase,
        ),
      ],
    );
  }

  Widget get contractSection {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contract',
          style: titleTextStyle,
        ),
        const SizedBox(height: 6),
        UserDetailsTextWidget(
          detail: 'Phone: ',
          field: user.phone,
        ),
        const SizedBox(height: 6),
        UserDetailsTextWidget(
          detail: 'Email: ',
          field: user.email,
        ),
        const SizedBox(height: 6),
        UserDetailsTextWidget(
          detail: 'Address: ',
          field: user.address.fullAddress,
        ),
      ],
    );
  }

  TextStyle get titleTextStyle {
    return const TextStyle(
      color: Color(0xFF3D3D3D),
      fontSize: 16,
      fontFamily: 'Sora',
      fontWeight: FontWeight.w700,
      letterSpacing: 0.40,
    );
  }
}
