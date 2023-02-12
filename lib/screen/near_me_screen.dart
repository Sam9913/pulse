import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../widget/theme_bottom_appbar.dart';
import '../widget/theme_header_button.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const Expanded(
                flex: 10,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(9),
                    isDense: true,
                    hintText: 'Search here...',
                  ),
                ),
              ),
              const Expanded(
                flex: 2,
                child: Icon(
                  Icons.location_searching_outlined,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse('https://maps.google.com/'),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                const ThemeHeaderButton(
                  isSelected: true,
                  valueText: 'Station',
                ),
                const ThemeHeaderButton(
                  isSelected: false,
                  valueText: 'Shopping',
                ),
                const ThemeHeaderButton(
                  isSelected: false,
                  valueText: 'Food & Drinks',
                ),
                const ThemeHeaderButton(
                  isSelected: false,
                  valueText: 'Attraction',
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: DraggableScrollableSheet(
                minChildSize: 0.02,
                initialChildSize: 0.5,
                builder: (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ListView(
                        controller: scrollController,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 160,
                              vertical: 8,
                            ),
                            height: 8,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          const Text(
                            'BUS',
                            style: TextStyle(
                                color: Color(0xFF0F3892),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF0F3892),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.directions_bus_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('KL123 SOME STATION NAME'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF59522),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon_line_bus.png',
                                              width: 30,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const Text(
                                              '001',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('Start Point Name ~ End Point Name'),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF0F3892),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.directions_bus_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('KL123 SOME STATION NAME'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF59522),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon_line_bus.png',
                                              width: 30,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const Text(
                                              '001',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('Start Point Name ~ End Point Name'),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF0F3892),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.directions_bus_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('KL123 SOME STATION NAME'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF59522),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon_line_bus.png',
                                              width: 30,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const Text(
                                              '001',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('Start Point Name ~ End Point Name'),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF0F3892),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.directions_bus_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('KL123 SOME STATION NAME'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFF59522),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon_line_bus.png',
                                              width: 30,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const Text(
                                              '001',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('Start Point Name ~ End Point Name'),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          const Text(
                            'LRT',
                            style: TextStyle(
                                color: Color(0xFF0F3892),
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 2,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF0F3892),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: const Icon(
                                          Icons.train_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('KL123 SOME STATION NAME'),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 4,
                                          horizontal: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF7A212E),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/icons/icon_line_sri-petaling.png',
                                              width: 30,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const Text(
                                              '001',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Text('Start Point Name ~ End Point Name'),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(Icons.chevron_right_rounded),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ThemeBottomAppbar(
        selectedIndex: 2,
      ),
    );
  }
}
