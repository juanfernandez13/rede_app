import 'package:flutter/material.dart';
class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.location_pin),
          Icon(Icons.search),
          Icon(Icons.notifications_none),
          Icon(Icons.email)
        ],
      ),
    );
  }
}