import 'package:blocpattern/tools/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(40.w, 100.h, 40.h, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.menu,
                  size: 38,
                  color: Colors.black54,
                ),
                Container(
                  width: 120.w,
                  height: 120.h,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 40.w),
            child: Text(
              "Discover",
              style: CustomTextStyle.boldDarkText,
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: EdgeInsets.fromLTRB(20.w, 0, 20.w, 0),
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                indicator: CircleTabIndicator(color: Colors.black54, radius: 8.w),
                tabs: [
                  Tab(
                    text: "Plases",
                  ),
                  Tab(
                    text: "Inspiration",
                  ),
                  Tab(
                    text: "Emotions",
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.maxFinite,
              height: 1000.h,
              padding: EdgeInsets.only(left: 25.w),
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 25.w, top: 60.h),
                        width: 500.w,
                        height: 1000.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Image.asset("assets/images/audiobook.jpg"),
                      );
                    },
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  ),
                  Text("There"),
                  Text("Bye"),
                ],
              )),
          Container(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("data", style: CustomTextStyle.boldDarkText),
                Text(
                  "data",
                  style: CustomTextStyle.greyText,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            width: double.maxFinite,
            height: 60.h,
            margin: EdgeInsets.only(left: 25.w),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 25.w, top: 60.h),
                      width: 200.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Image.asset("assets/images/audiobook.jpg"),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25.w,),
                      width: 200.w,
                      height: 60.h,
                      child: Text("textxt",style: CustomTextStyle.greyText,),
                    )
                  ],
                );
              },
              itemCount: 4,
              scrollDirection: Axis.horizontal,
            ),

          )
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  final double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    Offset _offset = Offset(configuration.size!.width / 2 - radius / 2, configuration.size!.height);
    canvas.drawCircle(offset + _offset, radius, paint);
  }
}
