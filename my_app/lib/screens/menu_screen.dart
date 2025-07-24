// import 'package:flutter/material.dart';
// import 'package:qrood/constants.dart';
// import 'package:qrood/mock_data.dart';
// import 'package:qrood/router.dart';
// import 'package:qrood/widgets/menu_card.dart';

// class MenuScreen extends StatelessWidget {
//   const MenuScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return AppScaffold(
//       selectedIndex: 1,
//       child: Scaffold(
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: defaultPadding),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: defaultPadding),
//                 Text('메뉴', style: Theme.of(context).textTheme.headlineMedium),
//                 const SizedBox(height: defaultPadding),
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 8,
//                         ),
//                         elevation: 0,
//                       ),
//                       child: const Text('Top'),
//                     ),
//                     const SizedBox(width: 8),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 8,
//                         ),
//                         elevation: 0,
//                       ),
//                       child: const Text('Coffee'),
//                     ),
//                     const SizedBox(width: 8),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 8,
//                         ),
//                         elevation: 0,
//                       ),
//                       child: const Text('Tea'),
//                     ),
//                     const SizedBox(width: 8),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 8,
//                         ),
//                         elevation: 0,
//                       ),
//                       child: const Text('Juice'),
//                     ),
//                     Text(
//                       'Cake',
//                       style: Theme.of(context).textTheme.titleMedium,
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: GridView.builder(
//                     gridDelegate:
//                         const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2, // 한 줄에 2개씩
//                           crossAxisSpacing: defaultPadding, // 아이템 사이 가로 간격
//                           mainAxisSpacing: defaultPadding, // 아이템 사이 세로 간격
//                           childAspectRatio: 0.705, // 카드의 가로:세로 비율 (원하는 비율로 조정)
//                         ),
//                     itemCount: demoCafeMenuTitles.length,
//                     itemBuilder:
//                         (context, index) => MenuCard(
//                           title: demoCafeMenuTitles[index],
//                           price: demoCafeMenuPrices[index],
//                           image: demoCafeMenuImages[index],
//                         ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:qrood/constants.dart';
import 'package:qrood/mock_data.dart';
import 'package:qrood/router.dart';
import 'package:qrood/widgets/menu_card.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<String> _categories = ['Top', 'Coffee', 'Tea', 'Juice', 'Cake'];
  String _selectedCategory = 'Top';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      selectedIndex: 1,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: defaultPadding),
                    Text(
                      '메뉴',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: defaultPadding),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Row(
                  children:
                      _categories.map((category) {
                        final bool isSelected = category == _selectedCategory;
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _selectedCategory = category;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  isSelected ? primaryColor : Colors.grey[200],
                              foregroundColor:
                                  isSelected ? Colors.white : Colors.black54,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              elevation: 0,
                              minimumSize: const Size(0, 36),
                            ),
                            child: Text(category),
                          ),
                        );
                      }).toList(),
                ),
              ),
              const SizedBox(height: defaultPadding),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                  ),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: defaultPadding,
                          mainAxisSpacing: defaultPadding,
                          childAspectRatio: 0.705,
                        ),
                    itemCount: demoCafeMenuTitles.length,
                    itemBuilder:
                        (context, index) => MenuCard(
                          title: demoCafeMenuTitles[index],
                          price: demoCafeMenuPrices[index],
                          image: demoCafeMenuImages[index],
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
