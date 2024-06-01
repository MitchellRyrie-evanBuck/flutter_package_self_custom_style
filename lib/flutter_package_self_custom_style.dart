library flutter_package_self_custom_style;

import 'package:flutter/material.dart';

class StyleWidget extends StatelessWidget {
  const StyleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late double screenWidth = MediaQuery.of(context).size.width - 80;

    return Column(
      children: [
        Container(
          width: screenWidth,
          height: 200,
          color: Colors.white,
          child: ContributionsScreen(),
        )
      ],
    );
  }
}

class ContributionsScreen extends StatelessWidget {
  final List<int> contributions = List.generate(112, (index) => index % 7);

  ContributionsScreen({super.key}); // 模拟的提交数据

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 16, // 一周 7 天
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,
        ),
        itemCount: contributions.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: getColorForContribution(contributions[index]),
              borderRadius: BorderRadius.circular(4.0),
            ),
          );
        });
  }

  Color getColorForContribution(int contribution) {
    switch (contribution) {
      case 0:
        return Colors.lightGreen[100]!;
      case 1:
        return Colors.lightGreen[200]!;
      case 2:
        return Colors.lightGreen[400]!;
      case 3:
        return Colors.green[500]!;
      case 4:
        return Colors.green[700]!;
      default:
        return const Color.fromARGB(255, 222, 222, 222);
    }
  }
}
