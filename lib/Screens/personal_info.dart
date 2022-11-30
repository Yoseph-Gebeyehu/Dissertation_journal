import 'package:flutter/material.dart';
import 'package:gallery/Widgets/bottom_nav_bar.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Info'),
      ),
      body: const Center(
        child: Text('This is personal information'),
      ),
      bottomNavigationBar: BottomNavBar1(currentIndex: 2),
    );
  }
}
