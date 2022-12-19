import 'dart:ui';

import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widget/constants.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nwwhite,
      body: Column(
        children: [
          NewsPageImagePart(title: "kdsl"),
        ],
      ),
    );
  }
}
