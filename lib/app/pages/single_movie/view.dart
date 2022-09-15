import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:zarfilm_android_tv/app/widgets/HeaderWidget.dart';

import 'logic.dart';

class SingleMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SingleMovieLogic(Get.arguments[0]));
    final state = Get.find<SingleMovieLogic>().state;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            HeaderWidget(),
            Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Container(
                    width: 35.w,
                    height: 25.h,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network("https://zarfilmapp.com/wp-content/uploads/2022/09/MV5BY"
                          "zEzZDVkZDUtY2ZkMS00NzcwLTkwMjEtZGYxZjU1Y2IxNGMwXkEyXkFqcGde"
                          "QXVyMTEyMjM2NDc2._V1_SX500-210x263.jpg",fit: BoxFit.cover,),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
