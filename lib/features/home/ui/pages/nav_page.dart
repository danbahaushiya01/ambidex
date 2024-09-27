import 'package:ambidex/features/home/ui/pages/home_page.dart';
import 'package:ambidex/features/resources/ui/pages/resources_page.dart';
import 'package:ambidex/features/settings/ui/pages/settings_page.dart';
import 'package:ambidex/features/socials/ui/pages/socials_page.dart';
import 'package:ambidex/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  final pages = [
    HomePage(),
    SocialsPage(),
    ResourcesPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Assets.icons.home.svg(),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.socials.svg(),
            label: "Socials",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.library.svg(),
            label: "Resources",
          ),
          BottomNavigationBarItem(
            icon: Assets.icons.settings.svg(),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
