import 'package:flutter/material.dart';

class LevelProgress extends StatelessWidget {
  const LevelProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Level 23", style: TextStyle(color: Colors.white)),
              Text("2,847 XP", style: TextStyle(color: Colors.green)),
            ],
          ),
          SizedBox(height: 10),
          LinearProgressIndicator(
            value: 0.55,
            backgroundColor: Colors.grey,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
