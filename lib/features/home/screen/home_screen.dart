import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:yours_news/features/home/provider/news_provider.dart';
import 'package:yours_news/features/home/widget/custom_card.dart';
import 'package:yours_news/shared/constant/colors.dart';
import 'package:yours_news/shared/widget/custom_appbar.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cardItems = ref.watch(cardListProvider);
    return Scaffold(
      appBar: CustomAppBar(
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(
                width: 1,
                color: AppColor.colorEDEDED,
              ),
            ),
            child: const Icon(IconsaxPlusLinear.menu),
          ),
        ),
        leadingPadding: 20,
        actions: [
          Container(
            height: 50,
            width: 50,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              border: Border.all(
                width: 1,
                color: AppColor.colorEDEDED,
              ),
            ),
            child: const Icon(IconsaxPlusLinear.notification),
          ),
          const SizedBox(width: 20),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Welcome back, Tyler!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const Text(
              "Discover a world of news that matters to you",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: AppColor.textColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending news",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColor.textColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 310,
              width: 500,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardItems.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: 300, child: CustomCard(item: cardItems[index]));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
