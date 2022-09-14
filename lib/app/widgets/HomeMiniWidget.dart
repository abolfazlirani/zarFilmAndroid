import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:sizer/sizer.dart';
import 'package:text_scroll/text_scroll.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import 'package:zarfilm_android_tv/app/widgets/cover_badge.dart';

import '../../gen/json/base/HomeJsonDataModel.dart';

class HomeMiniWidget extends StatefulWidget {
  Items items;
  bool isSeries ;

  HomeMiniWidget(this.items, this.isSeries);

  @override
  State<HomeMiniWidget> createState() => _HomeMiniWidgetState();
}

class _HomeMiniWidgetState extends State<HomeMiniWidget> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 30.w,
      //height: 25.h,
      padding: EdgeInsets.all((1.5).w),
      margin: EdgeInsets.only(left: 3.w),
      decoration: BoxDecoration(
          color: "272727".toColor(),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GetCoverBadge(dubbed: widget.items.dubbed!.contains("on")
            ,
            subtitle: (widget.items.subtitle!.contains("on") &&
                widget.items.dubbed!.contains("on") == false),
            child: ClipRRect(

              child: Image.network(
                widget.items.image??"",
                height: 20.h,),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          SizedBox(height: 4,),
          Align(
            alignment: Alignment.centerLeft,
            child: TextScroll(
              widget.items.title??"",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 9.sp,
                fontWeight: FontWeight.bold,
              ),),
          ),
          SizedBox(height: 1.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween,
            children: [
              Container(
                width: 12.w,
                height: 2.h,
                padding: EdgeInsets.symmetric(
                    horizontal: 2, vertical: 1),
                decoration: BoxDecoration(
                    color: AppColor.praimaryColor,
                    borderRadius: BorderRadius.circular(
                        3)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween,
                  children: [
                    Text(widget.items.rate??"", style: TextStyle(
                        fontSize: 7.sp,
                        fontWeight: FontWeight.bold),),

                    Text("IMDB ", style: TextStyle(
                        fontSize: 7.sp),),
                  ],
                ),
              ),
              Text(widget.items.release??"", style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.white.withOpacity(
                      0.5)),),

            ],
          ),
       if(widget.isSeries)   Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween,
            children: [
              Container(
                width: 12.w,
                height: (1.8).h,
                padding: EdgeInsets.symmetric(
                    horizontal: 2, vertical: 1),
                decoration: BoxDecoration(
                    color: "363636".toColor(),
                    borderRadius: BorderRadius.circular(
                        3)
                ),
                child: Text("فصل "+(widget.items.season??"").toWord(),
                  style: TextStyle(fontSize: 6.sp),
                  textAlign: TextAlign.right,),
              ),
              SizedBox(width: 3.w,),
              Expanded(child: TextScroll(
                "قسمت "+(widget.items.part??"").toWord(), style: TextStyle(fontWeight:
              FontWeight.w200,
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 6.sp),)),

            ],
          ),

        ],
      ),
    );
  }
}
