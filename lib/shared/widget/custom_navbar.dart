import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:yours_news/features/home/screen/home_screen.dart';
import 'package:yours_news/shared/constant/colors.dart';

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);

class BottomNavigation extends HookConsumerWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);

    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          ref.read(bottomNavIndexProvider.notifier).state = index;
        },
        children: [
          HomeScreen(),
          // ProfileScreen(),
          // NotificationsScreen(),
          // SettingsScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        blurRadius: 0,
        shadowOffset: Offset(0, 0),
        spreadRadius: 0,
        selectedIndex: selectedIndex,
        showElevation: true,
        onItemSelected: (index) {
          ref.read(bottomNavIndexProvider.notifier).state = index;
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
        items: [
          BottomNavyBarItem(
              icon: const Icon(
                IconsaxPlusBold.home_2,
                color: AppColor.color666666,
              ),
              title: const Text(
                'Home',
                style: TextStyle(color: AppColor.color666666),
              ),
              activeColor: const Color.fromARGB(0, 255, 255, 255),
              inactiveColor: AppColor.color666666

              // activeColor: Colors.red,
              ),
          BottomNavyBarItem(
              icon: const Icon(
                IconsaxPlusBold.discover,
                color: AppColor.color666666,
              ),
              title: const Text(
                'Discover',
                style: TextStyle(color: AppColor.color666666),
              ),
              activeColor: const Color.fromARGB(0, 255, 255, 255),
              inactiveColor: AppColor.color666666
              // activeColor: Colors.purpleAccent,
              ),
          BottomNavyBarItem(
              icon: const Icon(
                IconsaxPlusBold.archive_1,
                color: AppColor.color666666,
              ),
              title: const Text(
                'Messages',
                style: TextStyle(color: AppColor.color666666),
              ),
              activeColor: const Color.fromARGB(0, 255, 255, 255),
              inactiveColor: AppColor.color666666
              // activeColor: Colors.pink,
              ),
          BottomNavyBarItem(
              icon: const Icon(
                IconsaxPlusBold.profile,
                color: AppColor.color666666,
              ),
              title: const Text('Settings',
                  style: TextStyle(color: AppColor.color666666)),
              activeColor: const Color.fromARGB(0, 255, 255, 255),
              inactiveColor: AppColor.color666666

              // activeColor: Colors.blue,
              ),
        ],
      ),
    );
  }
}
