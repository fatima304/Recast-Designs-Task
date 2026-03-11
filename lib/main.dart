import 'package:flutter/material.dart';
import 'package:recast_design_task/recast_designs_app.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    RecastDesignsApp(
      appRouter: AppRouter(),
    ),
  );
}