import 'package:flutter/material.dart';
import 'package:qrood/constants.dart';
import 'package:qrood/mock_data.dart';
import 'package:qrood/router.dart';
import 'package:qrood/widgets/restaurant_info_big_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      selectedIndex: 0,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  '오늘의 식당',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: defaultPadding),
                Expanded(
                  child: ListView.builder(
                    itemCount: demoBigImages.length,
                    itemBuilder:
                        (context, index) => Padding(
                          padding: const EdgeInsets.only(
                            bottom: defaultPadding,
                          ),
                          child: RestaurantInfoBigCard(
                            title: demoTitles[index],
                            subtitle: demoSubtitles[index],
                            image: demoBigImages[index],
                          ),
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
