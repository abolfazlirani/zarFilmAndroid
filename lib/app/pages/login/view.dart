import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import 'package:zarfilm_android_tv/app/common/app_config.dart';
import 'package:zarfilm_android_tv/app/entities/FocusController.dart';

import '../../widgets/keyboard_widget.dart';
import 'logic.dart';

class LoginPage extends StatelessWidget {
  var focusNode = FocusNode();

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final logic = Get.put(LoginLogic());
    final state = Get
        .find<LoginLogic>()
        .state;

    return Scaffold(
      backgroundColor: "010102".toColor(),
      body: Stack(
        children: [
          Align(
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.75,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.8,
              decoration: BoxDecoration(
                  color: "0E1116".toColor(),
                  borderRadius: BorderRadius.circular(15)
              ),
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                        color: "010102".toColor(),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("-----", style: TextStyle(
                                color: Colors.white.withOpacity(0.3)),),
                            SizedBox(width: Get.width * 0.01,),
                            Text("ورود با کد اعتبار سنجی", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),),
                            SizedBox(width: Get.width * 0.01,),
                            Text("-----", style: TextStyle(
                                color: Colors.white.withOpacity(0.3)),),
                          ],
                        ),
                        SizedBox(height: Get.height * 0.02,),
                        Text("دریافت کد اعتبار سنجی در آدرس زیر",
                          style: TextStyle(color: Colors.white,
                              fontSize: 11),),
                        Text("zarFilm.tv/auth",
                          style: TextStyle(color: AppColor.praimaryColor,
                              fontSize: 19),),
                        SizedBox(height: Get.height * 0.05,),
                        Text("کد اعتبار سنجی شما",
                          style: TextStyle(color: Colors.white,
                              fontSize: 16),),
                        Text("QRTY",
                          style: TextStyle(color: AppColor.praimaryColor,
                              fontSize: 25),),

                      ],
                    ),
                  ), flex: 1,),
                  Expanded(child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        GestureDetector(
                            onTap: () {
                              focusNode.requestFocus();
                            },
                            child: Image.asset("assets/image/Logo-Dark.png",
                              width: Get.width * 0.14,)),
                        SizedBox(height: Get.height * 0.05,),
                        Container(
                            width: Get.width * 0.3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("ورود با نام کاربری و ایمیل",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold),),

                                SizedBox(height: Get.height * 0.04,),
                                GetBuilder<FocusController>(
                                    init: FocusController(),
                                    tag: "login_1",
                                    builder: (logic) {
                                      return GestureDetector(
                                        onTap: (){
                                          sendToNewPage(context,"نام کاربری یا ایمیل",userController);

                                        },
                                        child: Container(
                                            width: Get.width * 0.25,
                                            height: Get.height * 0.08,
                                            margin: EdgeInsets.symmetric(
                                                vertical: Get.height * 0.01),
                                            // padding: EdgeInsets.symmetric(horizontal: Get.width*0.2),
                                            decoration: BoxDecoration(
                                                color: "010102".toColor(),
                                                borderRadius: BorderRadius
                                                    .circular(
                                                    30),
                                                border: Border.all(
                                                    color: logic.isFocus
                                                        ? AppColor.praimaryColor
                                                        : Colors.transparent)
                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: Get.width * 0.01,),
                                                Expanded(child: Center(
                                                  child: Focus(
                                                    onKey:(s,p)=> logic.focusFunction(s,p,(){
                                                      sendToNewPage(context,"نام کاربری یا ایمیل",userController);
                                                    }),
                                                    onFocusChange: logic
                                                        .chnageStatus,
                                                    child: TextField(

                                                      controller: userController,
                                                      enabled: false,
                                                      textAlign: TextAlign
                                                          .right,
                                                      decoration: InputDecoration
                                                          .collapsed(
                                                          hintText: "نام کاربری یا ایمیل"),
                                                    ),
                                                  ),
                                                )),
                                                Container(
                                                  width: 2,
                                                  height: Get.height * 0.05,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: Get.width *
                                                          0.01),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(500),
                                                      color: Colors.white
                                                          .withOpacity(0.2)
                                                  ),
                                                ),
                                                SvgPicture.asset(
                                                  "assets/image/login_1.svg",
                                                  width: Get.width * 0.015,
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.02,),


                                              ],
                                            )),
                                      );
                                    }),
                                GetBuilder<FocusController>(
                                    init: FocusController(),
                                    tag: 'login_2',
                                    builder: (logic) {
                                      return GestureDetector(
                                        onTap: (){
                                          sendToNewPage(context,"رمز عبور",passController);

                                        },
                                        child: Container(
                                            width: Get.width * 0.25,
                                            height: Get.height * 0.08,
                                            margin: EdgeInsets.symmetric(
                                                vertical: Get.height * 0.01),
                                            // padding: EdgeInsets.symmetric(horizontal: Get.width*0.2),
                                            decoration: BoxDecoration(
                                                color: "010102".toColor(),
                                                borderRadius: BorderRadius
                                                    .circular(
                                                    30),
                                                border: Border.all(
                                                    color: logic.isFocus
                                                        ? AppColor
                                                        .praimaryColor
                                                        : Colors
                                                        .transparent)

                                            ),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: Get.width * 0.01,),
                                                Expanded(child: Center(
                                                  child: Focus(
                                                    onKey:(s,p)=> logic.focusFunction(s,p,(){
                                                      sendToNewPage(context,"رمز عبور",passController);
                                                    }),
                                                    onFocusChange: logic
                                                        .chnageStatus,
                                                    child: TextField(
                                                      controller: passController,
                                                      enabled: false,

                                                      textAlign: TextAlign
                                                          .right,
                                                      decoration: InputDecoration
                                                          .collapsed(
                                                          hintText: "رمز عبور"),
                                                    ),
                                                  ),
                                                )),
                                                Container(
                                                  width: 2,
                                                  height: Get.height * 0.05,
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: Get.width *
                                                          0.01),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius
                                                          .circular(500),
                                                      color: Colors.white
                                                          .withOpacity(
                                                          0.2)
                                                  ),
                                                ),
                                                SvgPicture.asset(
                                                  "assets/image/login_2.svg",
                                                  width: Get.width * 0.015,
                                                ),
                                                SizedBox(
                                                  width: Get.width * 0.02,),


                                              ],
                                            )),
                                      );
                                    }),
                                GetBuilder<FocusController>(
                                    init: FocusController(),
                                    tag: "login_3",
                                    builder: (logic) {
                                      return Container(
                                          width: Get.width * 0.25,
                                          height: Get.height * 0.08,
                                          margin: EdgeInsets.symmetric(
                                              vertical: Get.height * 0.01),
                                          // padding: EdgeInsets.symmetric(horizontal: Get.width*0.2),
                                          decoration: BoxDecoration(
                                              color: AppColor.praimaryColor,
                                              borderRadius: BorderRadius.circular(
                                                  30),
                                              border: Border.all(
                                                  color: logic.isFocus
                                                      ? Colors.white
                                                      : Colors
                                                      .transparent)
                                          ),
                                          child: Focus(
                                            onFocusChange: logic.chnageStatus,
                                            child: MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius
                                                      .circular(
                                                      500)
                                              ),
                                              padding: EdgeInsets.zero,
                                              onPressed: () {

                                              },
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: [

                                                  Text("ورود به حساب")

                                                ],
                                              ),
                                            ),
                                          ));
                                    }),
                              ],
                            ))
                      ],
                    ),
                  ), flex: 1,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  sendToNewPage(BuildContext context,String hint,TextEditingController textEditingController){
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return KeyboardWidget(hint,textEditingController);
        }
    ));
  }
}
