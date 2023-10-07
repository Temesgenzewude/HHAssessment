import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/Bottom_Nav_Bar.dart';
import '../widgets/no_photo_card.dart';
import '../widgets/photo_card.dart';
import '../widgets/photo_card_2.dart';
import '../widgets/photo_card_3.dart';

class MainProfile01 extends StatefulWidget {
  const MainProfile01({super.key});

  @override
  State<MainProfile01> createState() => _MainProfile01State();
}

class _MainProfile01State extends State<MainProfile01> {
  int index = 0;
  final List<Widget> _cards = [
    const PhotoCard(),
    const PhotoCard2(),
    const PhotoCard3(),
    const NoPhotoCard()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0D0D),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 50.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    image: const AssetImage('assets/images/location.png'),
                    height: 30.h,
                    width: 30.h,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Row(
                    children: [
                      Text(
                        "목이길어슬픈기린님의 새로운 스팟",
                        style: TextStyle(
                            color: const Color(0xFFFCFCFC),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        " 새로운",
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      Text(
                        " 스팟",
                        style: TextStyle(
                            color: const Color(0xFFFCFCFC),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 50.h,
                    width: 90.w,
                    padding: EdgeInsets.only(left: 5.w, right: 10.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: Colors.black,
                      border: Border.all(
                        color: const Color(0xFF212121),
                        width: 1,
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/star1.png',
                            height: 20.h,
                            width: 20.w,
                          ),
                          Text(
                            "323,233",
                            style: TextStyle(
                                color: const Color(0xFFFCFCFC),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  Image.asset(
                    'assets/images/notification_icon.png',
                    height: 50.h,
                    width: 50.h,
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: _cards[index],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    if (index > 0) {
                      setState(() {
                        index = index - 1;
                      });
                    }
                  },
                  child: Container(
                    height: 250,
                    width: 150,
                    color: Colors.transparent,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (index < 3) {
                      setState(() {
                        index = index + 1;
                      });
                    }
                  },
                  child: Container(
                    height: 250,
                    width: 150,
                    color: Colors.transparent,
                  ),
                )
              ],
            ),
          ],
        ),
      ]),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
