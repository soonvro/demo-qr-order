import 'package:flutter/material.dart';
import 'package:qrood/constants.dart';

class MenuCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;

  const MenuCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor, // primaryColor 사용
            width: 1, // 얇은 선
          ),
          borderRadius: BorderRadius.circular(10), // 라운드 처리
        ),
        padding: const EdgeInsets.all(defaultPadding / 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: defaultPadding / 4),
            Container(
              width: double.infinity,
              height: 0.5,
              color: primaryColor.withAlpha(50),
            ),
            const SizedBox(height: defaultPadding / 4),
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: defaultPadding / 4),
            Text(price, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: defaultPadding / 4),
          ],
        ),
      ),
    );
  }
}
