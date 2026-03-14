import 'package:flutter/material.dart';

class SkillProgression extends StatelessWidget {
  const SkillProgression({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 12,
      mainAxisSpacing: 12,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        SkillCard("Kicks", 18, Colors.red),
        SkillCard("Twists", 15, Colors.blue),
        SkillCard("Flips", 21, Colors.purple),
        SkillCard("Combos", 12, Colors.orange),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String title;
  final int value;
  final Color color;

  const SkillCard(this.title, this.value, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 10),
          Text(
            "$value",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          LinearProgressIndicator(
            value: value / 30,
            color: color,
            backgroundColor: Colors.grey.shade800,
          ),
        ],
      ),
    );
  }
}
