import 'package:budgetbuddy/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppWidget extends HookWidget {
  const AppWidget({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
  final appRouter = useState(AppRouter());
    
    return MaterialApp.router(
      theme: ThemeData.dark(),
      routeInformationParser: appRouter.value.defaultRouteParser(),
      routerDelegate: appRouter.value.delegate(),
    );
  }
}
