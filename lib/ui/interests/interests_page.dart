import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_app/themes/app_theme.dart';
import 'package:getx_app/ui/interests/interests_controller.dart';
import 'package:getx_app/ui/widgets/button_gradient_long_base.dart';
import 'package:getx_app/ui/widgets/button_gradient_widget_two.dart';
import 'package:getx_app/ui/widgets/button_white_long_widget.dart';
import 'package:getx_app/ui/widgets/button_white_widget.dart';

class InterestsPage extends GetView<InterestsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // leadingWidth: 60,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios_new_rounded,
              color: Color.fromRGBO(36, 40, 51, 1)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text('๐  ะะฝัะตัะตัั',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppConfig.secondary,
              )),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        top: false,
        minimum: const EdgeInsets.all(20.0),
        child: Center(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Align(
                  alignment: FractionalOffset.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: GragientButtonTwo(
                                onPressed: () {},
                                child: Text(
                                  '๐ฅ ะกััะฐััั',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              flex: 1,
                              child: WhiteButton(
                                onPressed: () {},
                                child: Text(
                                  '๐น ะะตัะตัะธะฝะบะฐ',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 187, 251, 1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: WhiteButton(
                                onPressed: () {},
                                child: Text(
                                  '๐ผ๐ป ะกะตะผัั',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 187, 251, 1)),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              flex: 1,
                              child: GragientButtonTwo(
                                onPressed: () {},
                                child: Text(
                                  '๐ฎ  ะะณัั',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: GragientButtonTwo(
                                onPressed: () {},
                                child: Text(
                                  '๐จ ะขะฒะพััะตััะฒะพ',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              flex: 1,
                              child: WhiteButton(
                                onPressed: () {},
                                child: Text(
                                  '๐ฆ ะ?ะฐะทะฒะธัะธะต',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 187, 251, 1)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 1,
                              child: WhiteButton(
                                onPressed: () {},
                                child: Text(
                                  '๐ต ะะธะทะฝะตั',
                                  style: TextStyle(
                                      color: Color.fromRGBO(127, 187, 251, 1)),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              flex: 1,
                              child: GragientButtonTwo(
                                onPressed: () {},
                                child: Text(
                                  '๐๏ธ ะขะตัะฝะพะปะพะณะธะธ',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        WhiteLongButton(
                          onPressed: () {},
                          child: Text(
                            '๐ฆ ะะฑะผะตะฝััััั ะฟะพะดะฐัะบะฐะผะธ',
                            style: TextStyle(
                                color: Color.fromRGBO(127, 187, 251, 1)),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        WhiteLongButton(
                          onPressed: () {},
                          child: Text(
                            '๐ ะะพะดะตะปะธัััั ะธััะพัะธะตะน ',
                            style: TextStyle(
                                color: Color.fromRGBO(127, 187, 251, 1)),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        GragientLongButtonBase(
                          onPressed: () {},
                          child: Text('โต ะัะธะบะปััะตะฝะธะต'),
                        ),
                        SizedBox(height: 10.h),
                        WhiteLongButton(
                          onPressed: () {},
                          child: Text(
                            '๐ ะกะพะฒะผะตััะฝัะน Chill ',
                            style: TextStyle(
                                color: Color.fromRGBO(127, 187, 251, 1)),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: GragientLongButtonBase(
                    onPressed: () {},
                    child: Text('ะัะธะผะตะฝะธัั'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
