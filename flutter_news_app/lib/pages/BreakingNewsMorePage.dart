import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widget/constants.dart';

class BreakingNewsMorePage extends StatelessWidget {
  const BreakingNewsMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nwwhite,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 30,
            color: nwblack,
          ),
        ),
      ),
      body: RefreshIndicator(
        backgroundColor: nwwhite,
        edgeOffset: 0,
        color: nwblack,
        onRefresh: refresh,
        child: Column(
          children: const [
            BreakingNewsMoreTitle(),
            BreakingNewsMoreList(),
          ],
        ),
      ),
    );
  }
}
