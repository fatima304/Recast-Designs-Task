import 'package:flutter/material.dart';
import 'core/routing/app_router.dart';

class RecastDesignsApp extends StatelessWidget {
  final AppRouter appRouter;
  const RecastDesignsApp({super.key, required this.appRouter});
  
  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: appRouter.generateRoute,
  );
}
}


