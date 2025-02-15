import 'package:flutter/material.dart';
import 'package:flutter_advanced_course/core/routing/app_router.dart';
import 'package:flutter_advanced_course/core/routing/routes.dart';
import 'package:flutter_advanced_course/core/theme/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Doc App",
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
        theme: ThemeData(
          primaryColor: ColorsManager.kmainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
      ),
    );
  }
}
