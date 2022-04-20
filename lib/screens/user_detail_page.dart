import 'package:flutter/material.dart';

import 'home.dart';

class UserDetailPage extends StatelessWidget {
  final User user;
  const UserDetailPage({
    Key? key,
    required this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Icon(
              user.icon,
              size: 100,
            ),
            const SizedBox(height: 16),
            Text(user.title),
          ],
        ),
      ),
    );
  }
}
