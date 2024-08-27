import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:yours_news/features/home/model/card_item.dart';

final cardListProvider = StateProvider<List<CardItem>>((ref) {
  return [
    CardItem(
      imageUrl: 'https://via.placeholder.com/150',
      title: 'Global Summit on Climate Change: Historic Agreement Reached',
      logoUrl: 'https://via.placeholder.com/24',
      text: 'BBC News',
      icon: IconsaxPlusBold.verify,
      date: '2024-08-27',
      tag: 'Enviroment',
    ),
    CardItem(
      imageUrl: 'https://via.placeholder.com/150',
      title: 'Card Title 2',
      logoUrl: 'https://via.placeholder.com/24',
      text: 'Some text',
      icon: IconsaxPlusBold.verify,
      date: '2024-08-27',
      tag: 'Tag 2',
    ),
    // Add more CardItem instances as needed
  ];
});
