import 'package:flutter/material.dart';
import 'package:tricking_app/presentation/screens/progress_analytics/widgets/stats_card.dart';
import 'package:tricking_app/shared/widgets/header.dart';

class ProgressAnalyticsScreen extends StatelessWidget {
  static const String name = 'progress_analytics_screen';

  const ProgressAnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(title: 'Progress Analytics', showSubTitle: false),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    StatsCard(
                      title: "Tricks Mastered",
                      value: "87",
                      change: "+12%",
                    ),
                    StatsCard(
                      title: "Success Rate",
                      value: "74%",
                      change: "+5%",
                    ),
                    StatsCard(title: "Day Streak", value: "21", change: "-2"),
                    StatsCard(
                      title: "Weekly Training",
                      value: "4.2h",
                      change: "+20min",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
