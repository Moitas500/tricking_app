import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome back, Alex",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("Ready to level up?", style: TextStyle(color: Colors.grey)),
          ],
        ),
        Row(
          children: [
            Icon(Icons.notifications, color: Colors.white),
            SizedBox(width: 10),
            CircleAvatar(radius: 18),
          ],
        ),
      ],
    );
  }
}
