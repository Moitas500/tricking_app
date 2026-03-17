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
      children: [
        SkillCard(
          "Kicks",
          18,
          Colors.red,
          Icons.local_fire_department,
          onTap: () {},
        ),
        SkillCard("Twists", 15, Colors.blue, Icons.rotate_right, onTap: () {}),
        SkillCard(
          "Flips",
          21,
          Colors.purple,
          Icons.change_history,
          onTap: () {},
        ),
        SkillCard(
          "Combos",
          12,
          Colors.orange,
          Icons.all_inclusive,
          onTap: () {},
        ),
      ],
    );
  }
}

class SkillCard extends StatelessWidget {
  final String title;
  final int value;
  final Color color;
  final IconData icon;
  final VoidCallback? onTap;

  const SkillCard(
    this.title,
    this.value,
    this.color,
    this.icon, {
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title + Icon
              Row(
                children: [
                  Icon(icon, size: 18, color: color),
                  const SizedBox(width: 6),
                  Text(
                    title,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.textTheme.bodyMedium?.color?.withValues(
                        alpha: .8,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              /// Big number
              Text(
                "$value",
                style: theme.textTheme.headlineSmall?.copyWith(
                  color: color,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              /// Progress bar
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: value / 30,
                  minHeight: 8,
                  color: color,
                  backgroundColor: theme.colorScheme.surface.withValues(
                    alpha: .6,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
