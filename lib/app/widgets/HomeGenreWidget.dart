import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import 'package:zarfilm_android_tv/gen/json/base/HomeJsonDataModel.dart';
import  'package:persian_number_utility/persian_number_utility.dart';

class HomeGenreWidget extends StatefulWidget {
  Genre item;

  HomeGenreWidget(this.item);

  @override
  State<HomeGenreWidget> createState() => _HomeGenreWidgetState();
}

class _HomeGenreWidgetState extends State<HomeGenreWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.w),
      width: 25.w,
      height: 25.w,
      decoration: BoxDecoration(
          color: "212121".toColor(),

          borderRadius: BorderRadius.circular(5)
      ),
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Container(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
            SvgPicture.string(widget.item.icon??"",width: 10.w,height: 10.w,color: AppColor.praimaryColor,),
              Text(widget.item.name??"")
            ],
          ),
        ),
      ),
    );
  }
}
