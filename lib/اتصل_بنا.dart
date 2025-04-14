import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theback/%D8%A7%D9%84%D8%B9%D8%B1%D9%88%D8%B6_%D8%A7%D9%84%D8%AE%D8%A7%D8%B5%D9%87.dart';
import 'package:theback/%D8%A7%D9%84%D9%85%D8%B4%D8%B1%D9%88%D8%B9%D8%A7%D8%AA.dart';
import 'package:theback/%D8%B9%D8%B1%D8%B6_%D8%AE%D8%A7%D8%B5.dart';
import 'package:theback/saramica.dart';

class CallUs extends StatefulWidget {
  static const String id='CallUs';
  const CallUs({super.key});

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            Builder(builder:(context)=>IconButton(
                onPressed: ()
                {
                  Scaffold.of(context).openDrawer();
                  setState(() {

                  });
                },
                icon:  Icon(Icons.menu,size: 35.sp,))),
          ],
        ),
        title: Row(
          children: [
            Icon(Icons.shopping_cart_outlined,size: 20.r,),
            SizedBox(
              width: 8.w,
            ),
            Icon(FontAwesomeIcons.heart,size: 20.r,),
            SizedBox(
              width: 8.w,
            ),
            Icon(Icons.account_circle_outlined,size: 20.r,),
            SizedBox(
              width: 8.w,
            ),
          ],
        ),
        actions: [
          Padding(
            padding:  EdgeInsetsDirectional.only(end: 10.w),
            child: Image(image: const AssetImage('assets/images/245.png'),height: 200.h,width: 150.w,),
          ),
        ],
      ),

      drawer: Drawer(
          backgroundColor: Colors.black,
          child: Padding(
            padding:   EdgeInsetsDirectional.symmetric(vertical: 50.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: ()
                            {
                              Navigator.pop(context);
                            }
                            ,child:  Icon(Icons.close,color: Colors.white,size: 30.sp,)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('الخط الساخن:19119',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                        const Icon(
                          Icons.phone
                          ,color: Colors.white,
                        ),
                      ],
                    ),


                  ),

                  Divider(height: 1.h,thickness: 1,color: Colors.white,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, Saramica.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('الرئيسية',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),

                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context,Special.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon( Icons.star_border ,color: Colors.white,),
                          const Spacer(),
                          Text('العروض الخاصة',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),

                        ],
                      ),
                    ),
                  ),

                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, Projects.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('المشروعات',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),
                  GestureDetector(
                    onTap: ()
                    {
                      Navigator.pushReplacementNamed(context, SpecialOrder.id);
                    },
                    child: Padding(
                      padding:  const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.percent,color: Colors.red,),
                          const Spacer(),
                          Container(
                              color: Colors.red
                              ,child:  Text('عرض خاص',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold))),


                        ],
                      ),
                    ),
                  ),

                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacementNamed(context, CallUs.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('اتصل بنا',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),

                  Divider(height: 1.h,thickness: 1.h,color: Colors.white,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            side: const BorderSide(
                              color: Colors.white,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0),
                            )
                        ),
                        onPressed: () {  },
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(),
                            Text('تحديد موعد',style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),
                            const Spacer(),
                            const Icon(Icons.calendar_month,color: Colors.white,),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )


      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            color: Colors.brown,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight
                      ,child: Text('الرئيسية / اتصل بنا',style: TextStyle(color: Colors.white,fontSize: 18.sp,),)),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text('اختر مساحتك اتصل بموظفينا',style: TextStyle(color: Colors.white,fontSize: 22.sp,),)),

                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('لتوصيل القياسي المجاني ممول للطلبات عبر الانترنت', style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.bold),),
              )),
          Container(
            color: Colors.brown,
            width: double.infinity,
            child: Align(
                alignment: Alignment.center
                ,child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('   :اختر موضوع',style: TextStyle(color: Colors.white,fontSize: 15.sp),),
                )),
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               SizedBox(
                 width: 200,
                 child: TextField(
                   decoration: InputDecoration(
                       label: Align(
                           alignment: Alignment.centerRight,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('لقب',style: TextStyle(color: Colors.grey),),
                           ))
                   ),
                 ),
               ),
               SizedBox(
                 width: 200,
                 child: TextField(
                   decoration: InputDecoration(
                       label: Align(
                           alignment: Alignment.centerRight,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text('الاسم الاول',style: TextStyle(color: Colors.grey),),
                           ))
                   ),
                 ),
               ),
               TextField(
                 decoration: InputDecoration(
                     label: Align(
                         alignment: Alignment.centerRight,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('الهاتف',style: TextStyle(color: Colors.grey),),
                         ))
                 ),
               ),
               TextField(
                 decoration: InputDecoration(
                     label: Align(
                         alignment: Alignment.centerRight,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('بريدك الألكتروني',style: TextStyle(color: Colors.grey),),
                         ))
                 ),
               ),
               TextField(
                 decoration: InputDecoration(
                     label: Align(
                         alignment: Alignment.centerRight,
                         child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text('رسالتك',style: TextStyle(color: Colors.grey),),
                         ))
                 ),
               ),
               SizedBox(
                 height: 20.h,
               ),
               Container(
                 decoration: BoxDecoration(
                     border: Border.all(color: Colors.black)
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Text('ارسل الطلب',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                 ),
               )
             ],
           ),
         ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffEEEDE7),
              border: Border.all(
                color: Colors.black
              )
            ),

            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight
                      ,child: Text('حضور علي مستوي العالم',style: TextStyle(fontSize: 20.sp,color: Colors.black),)),
                  SizedBox(height: 10.h,),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text('نحن نصدر منتجاتنا الي 107 في جميع انحاء العالم, لمزيد من',style: TextStyle(color: Colors.black,fontSize: 15.sp,),)),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(':المعلومات, يرجي التواصل مع إدارة التصدير',style: TextStyle(color: Colors.black,fontSize: 15.sp,),)),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text('export@groupPrima.com',style: TextStyle(color: Colors.grey,fontSize: 15.sp,),)),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
