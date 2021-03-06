import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/ui/widgets/button_gradient_icon_widget.dart';
import 'package:getx_app/ui/widgets/button_gradient_widget_one.dart';

import 'profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          BackgroundWidget(),
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/upload.png", height: 100.h),
              TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    text: 'Добавить',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: '',
                        style: DefaultTextStyle.of(context).style,
                      ),
                      TextSpan(
                          text: ' фотоснимки',
                          style: TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
              )
            ],
          )),
          SafeArea(
            minimum: const EdgeInsets.only(left: 12, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WhereSlidesWidget(),
                TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Удалить фото',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 30.w,
            top: 20.h,
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Выйти       .'),
              style: OutlinedButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.white.withOpacity(0.4),
                minimumSize: Size(114, 40),
                maximumSize: Size(300, 40),
                textStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  // fontFamily: Inter
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                side:
                    BorderSide(color: Colors.white.withOpacity(0.2), width: 0),
              ),
            ),
          ),
          Positioned(
            right: 21.w,
            top: 21.h,
            child: Container(
                child: Image.asset(
              'assets/icons/logout.png',
              width: 45,
            )),
          ),
          SafeArea(
            minimum: const EdgeInsets.only(left: 20, right: 20),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 40.h,
                    child: Row(
                      children: [
                        GragientIconButton(
                          onPressed: () {},
                          child: Text('Мой пол'),
                          icon: Image.asset(
                            'assets/icons/girl.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Spacer(),
                        GragientIconButton(
                          onPressed: () {},
                          child: Text('Русский'),
                          icon: Image.asset(
                            'assets/icons/fire.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    children: [
                      Text(
                        'Твое имя',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        '21',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      SizedBox(width: 14.w),
                      Image.asset("assets/icons/online_point.png", width: 10.w),
                      Spacer(),
                      GragientShortButtonBase(
                        onPressed: () => Get.toNamed('/mycity_page'),
                        child: Text('Москва'),
                      )
                    ],
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 40.h,
                    child: Row(
                      children: [
                        OutlinedButton.icon(
                          onPressed: () => Get.toNamed('/interests_page'),
                          icon: Image.asset(
                            'assets/icons/fire.png',
                            fit: BoxFit.cover,
                          ),
                          label: Text('Интересы'),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.white.withOpacity(0.4),
                            minimumSize: Size(114, 40),
                            maximumSize: Size(300, 40),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 23),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.2), width: 0),
                          ),
                        ),
                        Spacer(),
                        OutlinedButton(
                          onPressed: () => Get.toNamed('/bithday_date_page'),
                          child: Text('01.01.2001'),
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white.withOpacity(0.6),
                            backgroundColor: Colors.white.withOpacity(0.2),
                            minimumSize: Size(114, 40),
                            maximumSize: Size(300, 40),
                            textStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 23),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
                            side: BorderSide(
                                color: Colors.white.withOpacity(0.2), width: 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(30),
        bottomLeft: Radius.circular(30),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.2,
              1.0,
            ],
            colors: [
              Color.fromRGBO(127, 187, 251, 1),
              Color.fromRGBO(255, 139, 173, 1),
            ],
          ),
        ),
      ),
    );
  }
}

class WhereSlidesWidget extends StatelessWidget {
  const WhereSlidesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, top: 25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.95)),
            height: 7.h,
            width: 56.h,
          ),
          SizedBox(width: 10.w),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.5)),
            height: 7.h,
            width: 56.h,
          ),
          SizedBox(width: 10.w),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white.withOpacity(0.5)),
            height: 7.h,
            width: 56.h,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
