import 'package:flutter/material.dart';
import '../widget/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                FlashNewsWidget(),
                SizedBox(height: 15),
                HomePageNewsTitle(title: "Breaking News"),
                HomePageNewsList(),
                HomePageNewsTitle(title: "Agenda News"),
                HomePageNewsList(),
                HomePageNewsTitle(title: "Covid-19 News"),
                HomePageNewsList(),
                HomePageNewsTitle(title: "Magazine News"),
                HomePageNewsList(),
                HomePageNewsTitle(title: "Exchange News"),
                HomePageNewsList(),
                HomePageNewsTitle(title: "Technology News"),
                HomePageNewsList(),
                HomePageNewsTitle(title: "Education News"),
                HomePageNewsList(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
