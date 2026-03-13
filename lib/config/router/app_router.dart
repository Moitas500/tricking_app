import 'package:go_router/go_router.dart';
import 'package:tricking_app/presentation/screens/screens.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, screen) => HomeScreen(),
    ),

    GoRoute(
      path: '/combo_generator',
      name: ComboGeneratorScreen.name,
      builder: (context, screen) => ComboGeneratorScreen(),
    ),

    GoRoute(
      path: '/profile',
      name: ProfileScreen.name,
      builder: (context, screen) => ProfileScreen(),
    ),

    GoRoute(
      path: '/progress_analytics',
      name: ProgressAnalyticsScreen.name,
      builder: (context, screen) => ProgressAnalyticsScreen(),
    ),

    GoRoute(
      path: '/skill_tree',
      name: SkillTreeScreen.name,
      builder: (context, screen) => SkillTreeScreen(),
    ),

    GoRoute(
      path: '/training_planner',
      name: TrainingPlannerScreen.name,
      builder: (context, screen) => TrainingPlannerScreen(),
    ),

    GoRoute(
      path: '/trick_glossary',
      name: TrickGlossaryScreen.name,
      builder: (context, screen) => TrickGlossaryScreen(),
    ),

    GoRoute(
      path: '/video_library',
      name: VideoLibraryScreen.name,
      builder: (context, screen) => VideoLibraryScreen(),
    ),
  ],
);
