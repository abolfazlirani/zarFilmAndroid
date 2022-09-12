/// Generated by Flutter GetX Starter on 2022-09-05 15:53
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';

import 'home_logic.dart';
import 'home_state.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeLogic logic = Get.put(HomeLogic());
  final HomeState state = Get.find<HomeLogic>().state;

  @override
  void dispose() {
    Get.delete<HomeLogic>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: "191919".toColor(),
    );
  }
}