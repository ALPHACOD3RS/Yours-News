import 'package:flutter/material.dart';
import 'package:yours_news/features/home/model/card_item.dart';
import 'package:yours_news/shared/constant/colors.dart';

class CustomCard extends StatelessWidget {
  final CardItem item;

  CustomCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColor.colorF9FCFE,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Image section
              SizedBox(
                width: double.infinity,
                height: 160,
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    child: Image.network(
                      item.imageUrl,
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                top: 8.0,
                left: 8.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: AppColor.color2ABAFF,
                  ),
                  width: 100,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Text(
                    item.tag,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  item.title,
                  maxLines: 3,
                  softWrap: true,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8.0),

                

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(item.logoUrl,
                              width: 24.0, height: 24.0),
                          const SizedBox(width: 8.0),
                          Text(item.text),
                          const SizedBox(width: 8.0),
                          Icon(item.icon),
                        ],
                      ),
                      Text(item.date),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
