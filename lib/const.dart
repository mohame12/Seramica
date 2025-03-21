import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theback/carsoul2.dart';
import 'package:theback/carsoul3.dart';
import 'package:theback/stk_crsoul_widget.dart';

bool isExpanded = false;
List<Widget> carsoul=[
  const StackCarsoulWidget(text: 'الق مظرة علي الأدوات الصحية', image: 'assets/images/3.jpeg', text2: 'شاهد الأدوات الصحية',),
  const StackCarsoulWidget(text: 'اكتشف مجموعتنا الجديدة', image: 'assets/images/22.jpg', text2: 'شاهد المجموعات الجديدة',),
  Stack(
    children: [
      Container(
        color: Colors.white,
        child: const Image(image: AssetImage('assets/images/55.jpg'),height: double.infinity,width: double.infinity,fit: BoxFit.cover,),
      ),
      Positioned(
        bottom: 60.h,
        right: 12.w,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('عرض خاص',style: TextStyle(color: Colors.red,fontSize: 22.sp,fontWeight: FontWeight.bold),),
              Text('Ceramic tiles from 50',style: TextStyle(color: Colors.white,fontSize: 22.sp),),
              Text('EGP/SQM',style: TextStyle(color: Colors.white,fontSize: 22.sp,),),
            ],
          ),
        ),
      ),
      Positioned(
        bottom: 20.h,
        left: 20.w,
        child: Container(
          width: 180.w,
          color: Colors.brown,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Text('شراء الأن',style: TextStyle(color: Colors.white,fontSize: 12.sp),),
              ],
            ),
          ),
        ),
      )
    ],
  )
];




List<Widget> carsoul2=[
  const SpecialSales(text:'ارلون' , image:'assets/images/22.jpg' ),
  const SpecialSales(text:'ايرا', image:'assets/images/3.jpeg' ),
  const SpecialSales(text: 'بيكايا', image: 'assets/images/55.jpg'),
  const SpecialSales(text: 'ابهي جراي', image:'assets/images/22.jpg' ),
  const SpecialSales(text: 'ارلون', image:'assets/images/3.jpeg' ),
];
List<Widget> carsoul3=[
  const SpecialSales2(text:'رويالتي' , image:'assets/images/22.jpg', text2: 'يبدأ من 719 جنيه مصر / متر مربع', ),
  const SpecialSales2(text:'ستونيا', image:'assets/images/3.jpeg', text2: 'يبدأ من 225 جنيه مصر / متر مربع', ),
  const SpecialSales2(text: 'فانسي وايت', image: 'assets/images/55.jpg', text2: 'يبدأ من 225 جنيه مصر / متر مربع',),
  const SpecialSales2(text: 'سوبر استريد', image:'assets/images/22.jpg', text2: 'يبدأ من 255 جنيه مصر / متر مربع', ),
  const SpecialSales2(text: 'جالا', image:'assets/images/3.jpeg', text2: 'يبدأ من 255 جنيه مصر / متر مربع', ),
];
int ind=0;