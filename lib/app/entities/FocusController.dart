import 'package:flutter/services.dart';
import 'package:flutter/src/services/raw_keyboard.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

class FocusController extends GetxController {

  bool isFocus = false;

  chnageStatus(bool foc){
    isFocus =foc;
    update();
  }

  focusFunction(FocusNode s, RawKeyEvent p, Null Function() param2) {
    if(p.logicalKey == LogicalKeyboardKey.select){
     param2.call();
    }
    return KeyEventResult.ignored;

  }

}