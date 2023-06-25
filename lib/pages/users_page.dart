import 'package:flutter/material.dart';

import '../services/api_service.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/user_widget.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  late Future<List?> listOfUsers;

  @override
  void initState() {
    super.initState();
    listOfUsers = ApiService().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 155,
              padding: const EdgeInsets.symmetric(horizontal: 31, vertical: 25),
              decoration: decoration,
              child: Column(
                children: [
                  usersHeader,
                  const SizedBox(height: 18),
                  searchBar,
                ],
              ),
            ),
            users,
          ],
        ),
      ),
    );
  }

  Widget get usersHeader {
    return const Text(
      'USERS',
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w700,
        letterSpacing: 0.50,
      ),
    );
  }

  Widget get searchBar => const SearchBarWidget();

  Widget get users {
    return FutureBuilder(
      future: listOfUsers,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          final List data = snapshot.data;
          return Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: ListView.separated(
                  itemCount: data.length,
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemBuilder: ((_, index) {
                    final user = data[index];
                    return UserWidget(user: user);
                  }),
                  separatorBuilder: (_, __) {
                    return const Divider(
                      height: 0,
                      thickness: 1,
                      color: Color(0xFFBD9FE9),
                    );
                  },
                ),
              ),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  ShapeDecoration get decoration {
    return const ShapeDecoration(
      color: Color(0xFF7B3FD3),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }
}
