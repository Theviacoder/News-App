import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widget/constants.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nwwhite,
      body: Column(children: const [
        SearchPageTitle(),
        CategoryTabBarWidget(),
      ]),
    );
  }
}
