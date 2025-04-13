import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:theback/%D8%A7%D8%AA%D8%B5%D9%84_%D8%A8%D9%86%D8%A7.dart';
import 'package:theback/%D8%A7%D9%84%D8%B9%D8%B1%D9%88%D8%B6_%D8%A7%D9%84%D8%AE%D8%A7%D8%B5%D9%87.dart';
import 'package:theback/%D8%A7%D9%84%D9%85%D8%B4%D8%B1%D9%88%D8%B9%D8%A7%D8%AA.dart';
import 'package:theback/%D8%B9%D8%B1%D8%B6_%D8%AE%D8%A7%D8%B5.dart';
import 'package:theback/saramica.dart';

void main()
{
  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_ , child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute:Saramica.id,
        routes: {
          Saramica.id:(context)=>const Saramica(),
          Special.id:(context)=>const Special(),
          SpecialOrder.id:(context)=>const SpecialOrder(),
          Projects.id:(context)=>const Projects(),
          CallUs.id:(context)=>const CallUs(),
        },
    );
    });
  }
}
