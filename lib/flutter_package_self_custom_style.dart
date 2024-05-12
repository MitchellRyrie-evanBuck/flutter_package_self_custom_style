library flutter_package_self_custom_style;

import 'package:flutter/material.dart';

class StyleWidget extends StatelessWidget {
  const StyleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: 100,
      height: 100,
      alignment: Alignment.center,
      child: const Text("data"),
    );
  }
}
