/// Generated by Flutter GetX Starter on 2022-09-05 15:53

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import './app/common/app_route.dart';

void main()  {

  runApp(Sizer(
      builder: (context, orientation, deviceType) {
        return  MyApp();
      }
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      initialRoute: Routes.SPLASH,
      debugShowCheckedModeBanner: false,
      getPages: Routes.routes,
      theme: ThemeData(

          scaffoldBackgroundColor: "171717".toColor(),
          primaryColor: AppColor.praimaryColor,

          brightness: Brightness.dark,
          fontFamily: "Schyler"
      ),
    );
  }
}