import 'package:flutter/material.dart';
import 'package:qrood/constants.dart';

class RestaurantInfoBigCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const RestaurantInfoBigCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: defaultPadding / 4),
          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: defaultPadding / 4),
        ],
      ),
    );
  }
}
