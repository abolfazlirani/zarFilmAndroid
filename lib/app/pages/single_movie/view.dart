import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class SingleMoviePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(SingleMovieLogic());
    final state = Get.find<SingleMovieLogic>().state;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
