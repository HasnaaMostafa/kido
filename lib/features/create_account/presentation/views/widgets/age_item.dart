import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InActiveAgeItem extends StatelessWidget {
  const InActiveAgeItem({
    super.key,
    required this.age,
  });

  final String age;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 10, bottom: 10, left: 5),
      child: Container(
          decoration: const ShapeDecoration(shape: CircleBorder()),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  age,
                ),
              ],
            ),
          )),
    );
  }
}

class ActiveAgeItem extends StatelessWidget {
  const ActiveAgeItem({
    super.key,
    required this.age,
  });

  final String age;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, top: 10, bottom: 10, left: 5),
      child: Container(
          decoration: const ShapeDecoration(shape: CircleBorder()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xff6631fc),
                child: SvgPicture.asset(
                  age,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            ],
          )),
    );
  }
}
