import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:theback/%D8%A7%D8%AA%D8%B5%D9%84_%D8%A8%D9%86%D8%A7.dart';
import 'package:theback/%D8%A7%D9%84%D8%B9%D8%B1%D9%88%D8%B6_%D8%A7%D9%84%D8%AE%D8%A7%D8%B5%D9%87.dart';
import 'package:theback/%D8%A7%D9%84%D9%85%D8%B4%D8%B1%D9%88%D8%B9%D8%A7%D8%AA.dart';
import 'package:theback/%D8%B9%D8%B1%D8%B6_%D8%AE%D8%A7%D8%B5.dart';
import 'package:theback/saramica.dart';

class Login extends StatefulWidget {
  static const String id='Login';
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool secure=true;
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.brown,
              width: double.infinity,
        
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('حسابك',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.normal, color: Colors.white),),
                  )),
            ),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('التوصيل القياسي المجاني ممول للطلبات عبر الإنترنت',style: TextStyle(color: Colors.black,fontSize: 15.sp,fontWeight: FontWeight.bold),),
            ),
             SizedBox(
               height: 30.h,
             ),
        
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:  EdgeInsets.only(right: 25.w),
                  child: Text('تسجيل الدخول',style: TextStyle(fontSize: 28.sp,color: Colors.black),),
                )),
            SizedBox(
              height: 30.h,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('اسم المستخدم او البريد الالكتروني *',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12,width: 0.2),
                  )
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('كلمة المرور *',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                )),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                obscureText: secure,
                decoration: InputDecoration(
                  prefixIcon: IconButton(onPressed: (){
                    setState(() {
                      secure = !secure;
                    });
                  }, icon: Icon(secure?Icons.visibility_off:Icons.visibility),),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12,width: 0.2),
                  )
                ),
              ),
            ),
             SizedBox(
               height: 20.h,
             ),
            
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('تذكرني',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                  Icon(Icons.crop_square,color: Colors.grey,),
                  SizedBox(width: 15.w,),

                  Container(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('تسجيل الدخول',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                    ),
                  ),

                ],
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('نسيت كلمة مرورك؟',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                )),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('تسجيل جديد',style: TextStyle(color: Colors.black,fontSize: 30.sp),),
                )),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(' البريد الالكتروني *',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                )),

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12,width: 0.2),
                    )
                ),
              ),
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('.سنرسل كلمة المرور الي عنوان بريدك الالكتروني',style: TextStyle(color: Colors.black,fontSize: 15.sp),),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Your personal data will be used to support yor experience throughtout this website, to manage access ti your account, and for other purposes described in our. ',textAlign: TextAlign.center,style: TextStyle(
                fontSize: 12.sp,color: Colors.black
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('تسجيل جديد',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h,)
          ],
        ),
      ),

    );
  }
}
