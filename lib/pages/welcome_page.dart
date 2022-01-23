import 'package:blocpattern/tools/custom_button.dart';
import 'package:blocpattern/tools/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "img1.jpg",
    "img2.jpg",
    "img3.jpg",
  ];
  List boldTitle = [
    "How to start",
    "How to continue",
    "How to finish",
  ];
  List regularTitle = [
    "By 3 Tips",
    "By 3 Tips",
    "By 2 Tips",
  ];
  List detailText = [
    "Set your language goals\n"
        "Learn common vocabulary\n"
        "Find a style that works for you\n",
    "Practice speaking\n"
        "Connect with a native speaker\n"
        "Consume media\n",
    "Engage with the culture\n"
        "Make travel plans\n"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    padding:   EdgeInsets.fromLTRB(80.w, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 350.h,
                        ),
                        Text(
                          "Tips",
                          style: CustomTextStyle.boldDarkText,
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          regularTitle[index],
                          style: CustomTextStyle.darkText,
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          detailText[index],
                          style: CustomTextStyle.greyText,
                        ),
                        SizedBox(
                          height: 90.h,
                        ),
                        CustomButton(
                          width: 320.w,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/" + images[index],
                                  ),
                                  fit: BoxFit.fitWidth)),
                        ),
                      ),
                      Positioned(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              3,
                              (indexDots) => Container(
                                    margin: EdgeInsets.only(bottom: 5.h),
                                    width: 18.w,
                                    height: indexDots == index ? 60.h : 20.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: indexDots == index
                                            ? Colors.deepPurpleAccent
                                            : Colors.deepPurpleAccent.withAlpha(50)),
                                  )),
                        ),
                        right: 50.w,
                        top: 150.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
