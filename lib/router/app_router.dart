import 'package:auto_route/auto_route.dart';
import 'package:budgetbuddy/main_screen/presentation/main_page.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(            
  replaceInRouteName: 'Page,Route',            
  routes: <AutoRoute>[            
    AutoRoute(page: MainPage, initial: true),            
  ],
)            

class AppRouter extends _$AppRouter{}