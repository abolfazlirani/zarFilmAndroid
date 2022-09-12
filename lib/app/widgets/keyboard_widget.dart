import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';

class KeyboardWidget extends StatefulWidget {
  String hintText ;
  TextEditingController textEditingController;


  KeyboardWidget(this.hintText, this.textEditingController);

  @override
  State<KeyboardWidget> createState() => _KeyboardWidgetState();
}

class _KeyboardWidgetState extends State<KeyboardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.back();
      },
      child: WillPopScope(
        onWillPop: ()async{
          Get.back();
          return true;
        },
        child: Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          body: Column(
            children: [
              Align(
                child: Container(
                  width: Get.width*0.8,
                  height: Get.height*0.15,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: AppColor.praimaryColor,width: 4),
                    borderRadius: BorderRadius.circular(500)
                  ),
                  margin: EdgeInsets.symmetric(vertical:Get.height*0.15 ),
                  child: Center(child: Focus(
                    onFocusChange: (s){
                      if(s==false){
                        Get.back();
                      }
                    },
                    child: TextField(
                      controller: widget.textEditingController,
                      style: TextStyle(

                        fontSize: 25
                      ),
                      textAlign: TextAlign.right,
                      autofocus: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle: TextStyle(
                            fontSize: 25
                        ),
                      ),
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
