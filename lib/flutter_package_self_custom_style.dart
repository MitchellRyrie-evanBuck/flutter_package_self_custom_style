library flutter_package_self_custom_style;

import 'package:flutter/material.dart';

class StyleWidget extends StatelessWidget {
  const StyleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late double screenWidth = MediaQuery.of(context).size.width - 60;

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            'Github',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        Container(
          width: screenWidth,
          height: 140,
          color: Colors.black12,
        )
      ],
    );
  }
}
