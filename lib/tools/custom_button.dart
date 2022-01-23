import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.width, this.responsive = false}) : super(key: key);
  bool? responsive;
  double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.deepPurpleAccent),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(180 / 360),
                  child: Image.asset(
                    "assets/images/three_arrows_right.png",
                    color: Colors.white,
                  ))),
        ],
      ),
    );
  }
}
