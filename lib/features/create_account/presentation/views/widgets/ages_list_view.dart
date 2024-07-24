import 'package:flutter/material.dart';

import 'age_item.dart';

class AgesListView extends StatefulWidget {
  const AgesListView({super.key});

  static const items = [
    "assets/images/numbers/4.svg",
    "assets/images/numbers/5.svg",
    "assets/images/numbers/6.svg",
    "assets/images/numbers/7.svg",
    "assets/images/numbers/8.svg",
    "assets/images/numbers/9.svg",
    "assets/images/numbers/10.svg"
  ];

  @override
  State<AgesListView> createState() => _AgesListViewState();
}

class _AgesListViewState extends State<AgesListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: AgesListView.items.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              child: AgeItem(
                image: AgesListView.items[index],
                isActive: selectedIndex == index,
              ),
            );
          }),
    );
  }
}

class AgeItem extends StatelessWidget {
  const AgeItem({super.key, required this.isActive, required this.image});
  final bool isActive;
  final String image;

  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveAgeItem(age: image) : InActiveAgeItem(age: image);
  }
}
