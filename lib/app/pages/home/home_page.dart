import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jamu_ibu/app/routes/assets_path.dart';
import 'package:jamu_ibu/app/utils/colors.dart';
import 'package:jamu_ibu/app/utils/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: ColorStyles.p50,
        body: Column(
          children: [
            Center(
              child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 4,
                        spreadRadius: 4)
                  ]),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 111.w, vertical: 34.h),
                    child: Image.asset(
                      Assets.jamuIbuTitle,
                      height: 36.h,
                      width: 138.w,
                    ),
                  )),
            ),
            Column(
              children: [
                const FilterWidget(),
                SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 12.h),
                        child: Row(
                          children: [
                            Container(
                              width: 48.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            SizedBox(
                              width: 12.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Muhhammad Zaki Hakim",
                                  style: TextStyles.b1SemiBoldN500,
                                ),
                                Text(
                                  "Kota Malang",
                                  style: TextStyles.b2Regular,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: width,
                        height: 360.h,
                        decoration: BoxDecoration(color: Colors.black),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 42.w,
                                  height: 19.h,
                                  decoration:
                                      BoxDecoration(color: ColorStyles.t200),
                                  child: Center(
                                    child: Text(
                                      "Apel",
                                      style: TextStyles.b2SemiBoldN400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Apel Malang",
                                  style: TextStyles.h6SemiBoldN500,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FluentIcons.comment_24_regular,
                                      color: ColorStyles.p300,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Icon(
                                      FluentIcons.bookmark_24_regular,
                                      color: ColorStyles.p300,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              "Penanaman mangga dan jeruk di daerah Karangploso guna membuka mata pencariiiiiii",
                              style: TextStyles.b1Regular,
                              maxLines: 2,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ));
  }
}

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 16.h),
      child: Column(
        children: [
          Container(
              width: 324.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: ColorStyles.p80,
                  borderRadius: BorderRadius.circular(40)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/filter.png',
                    width: 28.w,
                    height: 28.h,
                  ),
                  Text(
                    'Filter Postingan',
                    style: TextStyles.h6SemiBoldN500,
                  ),
                  SizedBox(
                    width: 4.w,
                  ),
                  const Icon(
                    FluentIcons.triangle_down_16_filled,
                    size: 12,
                  )
                ],
              )),
          SizedBox(
            height: 8.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 102.w,
                  height: 33.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 1.w, color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Jenis Tanaman:",
                        style: TextStyles.b2SemiBold,
                      ),
                      Text(
                        "Semua",
                        style: TextStyles.b3Regular,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  width: 102.w,
                  height: 33.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 1.w, color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Area Tanam:",
                        style: TextStyles.b2SemiBold,
                      ),
                      Text(
                        "Semua",
                        style: TextStyles.b3Regular,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  width: 102.w,
                  height: 33.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(width: 1.w, color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Kurun Waktu:",
                        style: TextStyles.b2SemiBold,
                      ),
                      Text(
                        "Semua",
                        style: TextStyles.b3Regular,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
