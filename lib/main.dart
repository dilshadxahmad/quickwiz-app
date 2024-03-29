import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quickwiz_app/Routes/app_navigation_routes.dart';
import 'package:quickwiz_app/Routes/route_generator.dart';
import 'package:quickwiz_app/config/theme_config.dart';
import 'package:quickwiz_app/routes/app_keys.dart';
import 'package:quickwiz_app/utils/constants/my_colors.dart';

void main() {
  runApp(const QuickwizApp());
}

class QuickwizApp extends StatelessWidget {
  const QuickwizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, widget) {
        return MaterialApp(
          color: MyColors.darkTunaColor,
          theme: ThemeConfig.lightTheme(),
          debugShowCheckedModeBanner: false,
          navigatorKey: AppKeys.navigationKey,
          initialRoute: AppNavRoutes.initialRoute,
          onGenerateRoute: RouteGenerator.generateRoute,
        );
      },
    );
  }
}
