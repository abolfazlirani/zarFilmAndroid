import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'logic.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SplashLogic());
    final state = Get.find<SplashLogic>().state;


    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [

          Align(child: Image.asset("assets/image/spalesh.webp")),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 20.w,
              height: 4.h,
              margin: EdgeInsets.only(bottom: 10.h),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(
                child: Text("نسخه " + "2.0",style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
