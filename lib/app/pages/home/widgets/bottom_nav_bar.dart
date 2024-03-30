import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:jamu_ibu/app/pages/bookmark/bookmark_page.dart';
import 'package:jamu_ibu/app/pages/profile/profile_page.dart';
import 'package:jamu_ibu/app/utils/colors.dart';
import '../../location/location_page.dart';
import '../../post/post_page.dart';
import '../home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = const [
    HomePage(),
    LocationPage(),
    PostPage(),
    BookmarkPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Lapisan pertama: Konten utama
          Positioned.fill(
            child: screens[currentIndex],
          ),
          // Lapisan kedua: BottomNavigationBar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              ),
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: BottomNavigationBar(
                  currentIndex: currentIndex,
                  onTap: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedItemColor: ColorStyles.p300,
                  unselectedItemColor: ColorStyles.p300,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.home_24_regular),
                        activeIcon: Icon(FluentIcons.home_24_filled),
                        label: "Home",
                        backgroundColor: Color(0xFFE4E9CF)),
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.location_24_regular),
                        activeIcon: Icon(FluentIcons.location_24_filled),
                        label: "Location",
                        backgroundColor: Color(0xFFE4E9CF)),
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.add_24_regular),
                        activeIcon: Icon(FluentIcons.add_24_filled),
                        label: "Add",
                        backgroundColor: Color(0xFFE4E9CF)),
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.bookmark_24_regular),
                        activeIcon: Icon(FluentIcons.bookmark_24_filled),
                        label: "Bookmark",
                        backgroundColor: Color(0xFFE4E9CF)),
                    BottomNavigationBarItem(
                        icon: Icon(FluentIcons.person_24_regular),
                        activeIcon: Icon(FluentIcons.person_24_filled),
                        label: "Profile",
                        backgroundColor: Color(0xFFE4E9CF)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
