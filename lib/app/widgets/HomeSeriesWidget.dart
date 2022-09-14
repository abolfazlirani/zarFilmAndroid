import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:zarfilm_android_tv/app/common/app_color.dart';
import 'package:zarfilm_android_tv/gen/json/base/HomeJsonDataModel.dart';
import  'package:persian_number_utility/persian_number_utility.dart';

class HomeSeriesWidget extends StatefulWidget {
  Items updatedSeries;

  HomeSeriesWidget(this.updatedSeries);

  @override
  State<HomeSeriesWidget> createState() => _HomeSeriesWidgetState();
}

class _HomeSeriesWidgetState extends State<HomeSeriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.w),
      width: 80.w,
      height: 20.h,
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,

              child: Container(
                width: 80.w,
                height: 16.h,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        10),
                    child: Image.network(
                      widget.updatedSeries.image??"",
                      fit: BoxFit.cover,)),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,

              child: Container(

                  child: Text(
                      widget.updatedSeries.title??"")

              ),
            ),
            Align(
              alignment: Alignment.bottomRight,

              child: Container(
                height: 4.h,
                margin: EdgeInsets.only(
                    bottom: 2.h,
                    right: 2.w
                ),
                decoration: BoxDecoration(
                    color: "121b20".toColor(),
                    borderRadius: BorderRadius.circular(
                        5)

                ),
                padding: EdgeInsets.all(3),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("فصل "+widget.updatedSeries.season!.toWord(), style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 9.sp
                    ),),
                    SizedBox(width: 2.w,),
                    Container(
                      padding: EdgeInsets.all(4),

                      decoration: BoxDecoration(
                          color: AppColor.praimaryColor,
                          borderRadius: BorderRadius
                              .circular(5)
                      ),
                      child: Text(
                        "قسمت "+widget.updatedSeries.part!.toWord(), style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 8.sp,

                          color: Colors.white
                      ),),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
