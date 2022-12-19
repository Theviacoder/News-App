import 'package:flutter/material.dart';
import 'package:flutter_news_app/pages/NewsPage.dart';
import '../pages/BreakingNewsMorePage.dart';
import '../constants/colors.dart';

//Flash News Widget
class FlashNewsWidget extends StatelessWidget {
  const FlashNewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("image/image1.jpg"), fit: BoxFit.cover),
        color: nwgrey,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 10),
          Homepageflashnewstitle(),
          Learnmorebutton(),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

//Learn more button
// ignore: camel_case_types
class Learnmorebutton extends StatelessWidget {
  const Learnmorebutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var learnMore = "Learn More";
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 55, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Text(
              learnMore,
              maxLines: 3,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          const Icon(
            Icons.arrow_right_sharp,
            size: 35,
            color: nwwhite,
          )
        ],
      ),
    );
  }
}

//Flash News title
// ignore: camel_case_types
class Homepageflashnewstitle extends StatelessWidget {
  const Homepageflashnewstitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var title = "Financial News London: Financial and Business  ";
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 55),
      child: Text(
        title,
        maxLines: 3,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}

//Breaking News title
// ignore: non_constant_identifier_names
class HomePageNewsTitle extends StatelessWidget {
  const HomePageNewsTitle({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BreakingNewsMorePage()),
              );
            },
            child: Text(
              "More",
              style: Theme.of(context).textTheme.headline5,
            ),
          )
        ],
      ),
    );
    ;
  }
}

//Breaking News list
class HomePageNewsList extends StatelessWidget {
  const HomePageNewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: 210,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            HomePageNewsItem(title: "New News", hours: 4),
            HomePageNewsItem(title: "No News", hours: 5),
            HomePageNewsItem(title: "New News", hours: 4),
            HomePageNewsItem(title: "No News", hours: 5),
            HomePageNewsItem(title: "New News", hours: 4),
            HomePageNewsItem(title: "No News", hours: 5),
            HomePageNewsItem(title: "New News", hours: 4),
            HomePageNewsItem(title: "No News", hours: 5),
          ],
        ),
      ),
    );
  }
}

//Breaking News Item
class HomePageNewsItem extends StatelessWidget {
  const HomePageNewsItem({Key? key, required this.title, required this.hours})
      : super(key: key);
  final String title;
  final int hours;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.60,
              height: 140,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("image/image1.jpg"),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: 10),
            Text("$hours hours ago",
                style: Theme.of(context).textTheme.subtitle2),
          ],
        ),
      ),
    );
  }
}

//Search Title
class SearchPageTitle extends StatelessWidget {
  const SearchPageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: const BoxDecoration(
        color: nwwhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Discover Text
          Text(
            "Discover",
            style: Theme.of(context).textTheme.headline2,
          ),
          //Discover subtitle
          Text(
            "News from all over the word",
            style: Theme.of(context).textTheme.subtitle2,
          ),
          const SizedBox(height: 30),
          const SearchBar(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

//Search Bar
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: nwopengrey,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        onTap: null,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(top: 10),
          prefixIcon: const Icon(
            Icons.search,
            color: nwblack,
            size: 30,
          ),
          prefixIconConstraints:
              const BoxConstraints(maxHeight: 20, minWidth: 10),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: Theme.of(context).textTheme.subtitle1,
        ),
      ),
    );
  }
}

//Catagory Widget
class CategoryTabBarWidget extends StatelessWidget {
  const CategoryTabBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                indicatorColor: nwblack,
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                labelColor: nwblack,
                labelStyle: Theme.of(context).textTheme.headline3,
                indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                  color: nwblack,
                  width: 2.0,
                )),
                tabs: const [
                  Tab(text: "Healty"),
                  Tab(text: "Politics"),
                  Tab(text: "Art"),
                  Tab(text: "Food"),
                  Tab(text: "Cinema"),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 370,
                  child: TabBarView(
                    children: [
                      TabbarHealtyPart(),
                      TabbarPoliticsPart(),
                      TabbarArtPart(),
                      TabbarFoodPart(),
                      TabbarCinemaPart(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

//TabBar Healty part
class TabbarHealtyPart extends StatelessWidget {
  const TabbarHealtyPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nwwhite,
      child: RefreshIndicator(
        backgroundColor: nwwhite,
        edgeOffset: 0,
        color: nwblack,
        onRefresh: refresh,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 443),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
            TabBarItem(title: "Healty Part", hour: 3, view: 234),
          ],
        ),
      ),
    );
  }
}

//TabBar Politics Part
class TabbarPoliticsPart extends StatelessWidget {
  const TabbarPoliticsPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nwwhite,
      child: RefreshIndicator(
        backgroundColor: nwwhite,
        edgeOffset: 0,
        color: nwblack,
        onRefresh: refresh,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            TabBarItem(title: "Politics Part", hour: 3, view: 234),
            TabBarItem(title: "Merhaba Dünya", hour: 3, view: 234),
            TabBarItem(title: "fırt Müdür", hour: 3, view: 234),
            TabBarItem(title: "çok tini Müdür", hour: 3, view: 234),
            TabBarItem(title: "metaliksiz Müdür", hour: 3, view: 234),
            TabBarItem(title: "çulsuz Müdür", hour: 3, view: 234),
            TabBarItem(title: "kaan Müdür", hour: 3, view: 234),
            TabBarItem(title: "istifa Müdür", hour: 3, view: 234),
            TabBarItem(title: "kısa Müdür", hour: 3, view: 234),
          ],
        ),
      ),
    );
  }
}

//TabBar Art Part
class TabbarArtPart extends StatelessWidget {
  const TabbarArtPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nwwhite,
      child: RefreshIndicator(
        backgroundColor: nwwhite,
        edgeOffset: 0,
        color: nwblack,
        onRefresh: refresh,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            TabBarItem(title: "Art Part", hour: 3, view: 234),
            TabBarItem(title: "Merhaba Dünya", hour: 3, view: 234),
            TabBarItem(title: "fırt Müdür", hour: 3, view: 234),
            TabBarItem(title: "çok tini Müdür", hour: 3, view: 234),
            TabBarItem(title: "metaliksiz Müdür", hour: 3, view: 234),
            TabBarItem(title: "çulsuz Müdür", hour: 3, view: 234),
            TabBarItem(title: "kaan Müdür", hour: 3, view: 234),
            TabBarItem(title: "istifa Müdür", hour: 3, view: 234),
            TabBarItem(title: "kısa Müdür", hour: 3, view: 234),
          ],
        ),
      ),
    );
  }
}

//TabBar Food Part
class TabbarFoodPart extends StatelessWidget {
  const TabbarFoodPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nwwhite,
      child: RefreshIndicator(
        backgroundColor: nwwhite,
        edgeOffset: 0,
        color: nwblack,
        onRefresh: refresh,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            TabBarItem(title: "Food Part", hour: 3, view: 234),
            TabBarItem(title: "Merhaba Dünya", hour: 3, view: 234),
            TabBarItem(title: "fırt Müdür", hour: 3, view: 234),
            TabBarItem(title: "çok tini Müdür", hour: 3, view: 234),
            TabBarItem(title: "metaliksiz Müdür", hour: 3, view: 234),
            TabBarItem(title: "çulsuz Müdür", hour: 3, view: 234),
            TabBarItem(title: "kaan Müdür", hour: 3, view: 234),
            TabBarItem(title: "istifa Müdür", hour: 3, view: 234),
            TabBarItem(title: "kısa Müdür", hour: 3, view: 234),
          ],
        ),
      ),
    );
  }
}

//TabBar Cinema Part
class TabbarCinemaPart extends StatelessWidget {
  const TabbarCinemaPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: nwwhite,
      child: RefreshIndicator(
        backgroundColor: nwwhite,
        edgeOffset: 0,
        color: nwblack,
        onRefresh: refresh,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: const [
            TabBarItem(title: "Cinema Part", hour: 3, view: 234),
            TabBarItem(title: "Merhaba Dünya", hour: 3, view: 234),
            TabBarItem(title: "fırt Müdür", hour: 3, view: 234),
            TabBarItem(title: "çok tini Müdür", hour: 3, view: 234),
            TabBarItem(title: "metaliksiz Müdür", hour: 3, view: 234),
            TabBarItem(title: "çulsuz Müdür", hour: 3, view: 234),
            TabBarItem(title: "kaan Müdür", hour: 3, view: 234),
            TabBarItem(title: "istifa Müdür", hour: 3, view: 234),
            TabBarItem(title: "kısa Müdür", hour: 3, view: 234),
          ],
        ),
      ),
    );
  }
}

//TabBar Item
class TabBarItem extends StatelessWidget {
  const TabBarItem(
      {Key? key, required this.title, required this.hour, required this.view})
      : super(key: key);
  final String title;
  final int hour;
  final int view;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const NewsPage(),
            ),
          );
        },
        child: Container(
          color: nwwhite,
          child: Row(
            children: [
              //image
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage("image/image3.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.access_time,
                                color: nwgrey,
                              ),
                              Text(
                                "$hour hours ago",
                                style: const TextStyle(color: nwgrey),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.remove_red_eye_outlined,
                                color: nwgrey,
                              ),
                              Text(
                                "$view view",
                                style: const TextStyle(color: nwgrey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Refresh Indıcator function
Future<void> refresh() async {
  await Future.delayed(const Duration(seconds: 1));
}

//Breaking News More Title
class BreakingNewsMoreTitle extends StatelessWidget {
  const BreakingNewsMoreTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width * 1,
      decoration: const BoxDecoration(
        color: nwwhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          //Discover Text
          Text(
            "Beaking News",
            style: Theme.of(context).textTheme.headline3,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

//Breaking News More List
class BreakingNewsMoreList extends StatelessWidget {
  const BreakingNewsMoreList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.80,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: const [
          BreakingNewsMoreItem(
              title: "title", hours: 4, view: 2, writer: "writer"),
          BreakingNewsMoreItem(
              title: "title", hours: 4, view: 2, writer: "writer"),
          BreakingNewsMoreItem(
              title: "title", hours: 4, view: 2, writer: "writer"),
          BreakingNewsMoreItem(
              title: "title", hours: 4, view: 2, writer: "writer"),
        ],
      ),
    );
  }
}

//Breakig News More Item
class BreakingNewsMoreItem extends StatelessWidget {
  const BreakingNewsMoreItem(
      {Key? key,
      required this.title,
      required this.hours,
      required this.view,
      required this.writer})
      : super(key: key);
  final String title;
  final int hours;
  final int view;
  final String writer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SizedBox(
        width: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("image/image1.jpg"), fit: BoxFit.cover),
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.access_time, color: nwgrey),
                Text("$hours hours ago",
                    style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(width: 20),
                const Icon(Icons.remove_red_eye_outlined, color: nwgrey),
                Text("$view view",
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              writer,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}

// News Page Image Part
class NewsPageImagePart extends StatelessWidget {
  const NewsPageImagePart({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.50,
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            image: NetworkImage(
                "https://blogs.biomedcentral.com/on-medicine/wp-content/uploads/sites/6/2019/09/iStock-1131794876.t5d482e40.m800.xtDADj9SvTVFjzuNeGuNUUGY4tm5d6UGU5tkKM0s3iPk-620x342.jpg"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 55),
            child: Text(
              title,
              maxLines: 3,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

//News Page View Ticket
class NewsPageTicketView extends StatelessWidget {
  const NewsPageTicketView({Key? key, required this.view}) : super(key: key);
  final int view;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
      decoration: BoxDecoration(
          color: nwgrey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(30)),
      child: Text(
        "$view view",
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}

//News Page Iformatıon Part
class NewsPageInformationPart extends StatelessWidget {
  const NewsPageInformationPart({
    Key? key,
    required this.newsTitle,
    required this.newsParagraph,
  }) : super(key: key);

  final String newsTitle;
  final String newsParagraph;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.50,
      decoration: const BoxDecoration(
        color: nwwhite,
      ),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          const NewsPageTicketCatagory(
            catagory: "healty",
            time: 2,
            view: 292,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              newsTitle,
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              newsParagraph,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          )
        ],
      ),
    );
  }
}

// News Page Informatıon Part
class NewsPageTicketCatagory extends StatelessWidget {
  const NewsPageTicketCatagory({
    Key? key,
    required this.catagory,
    required this.time,
    required this.view,
  }) : super(key: key);
  final String catagory;
  final int time;
  final int view;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: nwgrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            catagory,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: nwgrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            "$time h",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
              color: nwgrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            "$view view",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}

// Settings Page Main Title
class SettingsPageTitle extends StatelessWidget {
  const SettingsPageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.30,
      decoration: const BoxDecoration(
        color: nwwhite,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Discover Text
          Text(
            "Settings",
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    );
  }
}

//Settings Page List Title
class SettingsTitle extends StatelessWidget {
  const SettingsTitle({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}

//Settings List Item
class SettingsListItem extends StatelessWidget {
  const SettingsListItem({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
