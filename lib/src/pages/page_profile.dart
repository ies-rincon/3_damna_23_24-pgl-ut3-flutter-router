import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String name;
  const Profile({super.key, this.name = "Invitado"});

  static const routeName = 'profile_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Text('Hello $name'),
      ),
    );
  }
}
