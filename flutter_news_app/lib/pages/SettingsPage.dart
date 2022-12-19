import 'package:flutter/material.dart';
import 'package:flutter_news_app/constants/colors.dart';
import '../widget/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: nwwhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SettingsPageTitle(),
          SettingsList(),
        ],
      ),
    );
  }
}

class SettingsList extends StatelessWidget {
  const SettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.60,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SettingsTitle(title: "Account"),
                SettingsListAccount(),
                SettingsTitle(title: "Settings"),
                SettingsListLanguage(),
                SettingsListNotification(),
                SettingsListDarkMode(),
                SettingsListHelp(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsListHelp extends StatelessWidget {
  const SettingsListHelp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: nwred.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SettingsListLeadingIcon.help,
        ),
        SettingsListItem(title: "Mobile Info", subtitle: "contact us"),
        IconButton(onPressed: () {}, icon: SettingsListActionsIcon.actionsIcon),
      ],
    );
  }
}

class SettingsListDarkMode extends StatelessWidget {
  const SettingsListDarkMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: nwdeeppurple.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SettingsListLeadingIcon.darkmode,
        ),
        SettingsListItem(title: "Dark Mode", subtitle: "Of"),
        IconButton(onPressed: () {}, icon: SettingsListActionsIcon.actionsIcon),
      ],
    );
  }
}

class SettingsListNotification extends StatelessWidget {
  const SettingsListNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: nwgreen.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SettingsListLeadingIcon.natification,
        ),
        SettingsListItem(title: "Notification", subtitle: "On"),
        IconButton(onPressed: () {}, icon: SettingsListActionsIcon.actionsIcon),
      ],
    );
  }
}

class SettingsListLanguage extends StatelessWidget {
  const SettingsListLanguage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: nworange.withOpacity(0.2),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SettingsListLeadingIcon.languageicon,
        ),
        SettingsListItem(title: "Language", subtitle: "English"),
        IconButton(onPressed: () {}, icon: SettingsListActionsIcon.actionsIcon),
      ],
    );
  }
}

class SettingsListAccount extends StatelessWidget {
  const SettingsListAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 75,
          height: 75,
          decoration: BoxDecoration(
            color: nwgrey.withOpacity(0.4),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SettingsListLeadingIcon.accountIcon,
        ),
        SettingsListItem(title: "M.Kaan Öztürk", subtitle: "Personal Info"),
        IconButton(onPressed: () {}, icon: SettingsListActionsIcon.actionsIcon),
      ],
    );
  }
}

class SettingsListLeadingIcon {
  static const accountIcon = Icon(
    Icons.person,
    size: 40,
    color: nwopengrey,
  );
  static const languageicon = Icon(
    Icons.language,
    size: 40,
    color: nworange,
  );
  static const natification = Icon(
    Icons.notifications,
    size: 40,
    color: nwgreen,
  );
  static const darkmode = Icon(
    Icons.dark_mode,
    size: 40,
    color: nwdeeppurple,
  );
  static const help = Icon(
    Icons.support,
    size: 40,
    color: nwred,
  );
}

class SettingsListActionsIcon {
  static const actionsIcon = Icon(Icons.arrow_forward_ios_outlined);
  static const darkmode = Icon(Icons.wb_sunny_rounded);
}
