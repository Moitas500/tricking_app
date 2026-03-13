import 'package:go_router/go_router.dart';
import 'package:tricking_app/presentation/screens/screens.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, screen) => HomeScreen()
    ),

    GoRoute(
      path: '/combo_generator',
      builder: (context, screen) => ComboGeneratorScreen()
    ),

    GoRoute(
      path: '/profile',
      builder: (context, screen) => ProfileScreen()
    ),

    GoRoute(
      path: '/progress_analytics',
      builder: (context, screen) => ProgressAnalyticsScreen()
    ),

    GoRoute(
      path: '/skill_tree',
      builder: (context, screen) => SkillTreeScreen()
    ),

    GoRoute(
      path: '/training_planner',
      builder: (context, screen) => TrainingPlannerScreen()
    ),

    GoRoute(
      path: '/trick_glossary',
      builder: (context, screen) => TrickGlossaryScreen()
    ),

    GoRoute(
      path: '/video_library',
      builder: (context, screen) => VideoLibraryScreen()
    ),
  ]
);
