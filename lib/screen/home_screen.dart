import 'package:flutter/material.dart';
import 'package:pulse/screen/inbox_screen.dart';
import 'package:pulse/screen/service_status_screen.dart';
import 'package:pulse/screen/station_screen.dart';
import 'package:pulse/widget/theme_bottom_appbar.dart';

import '../widget/clipper.dart';
import 'fare_calculator_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Hi, Tesla',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              'Service Location: Rapid KL',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 4,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ),
            child: InkWell(
              onTap: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const InboxScreen()),
                );
              },
              child: const Icon(
                Icons.notifications_none_rounded,
                color: Colors.white,
                size: 35,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          headerWidget(context),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFECF2F9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.train_outlined,
                          color: Color(0xFF0F3892),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'All services are in normal conditions',
                          style: TextStyle(
                            color: Color(0xFF48C671),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Wrap(
                    spacing: 32,
                    runSpacing: 8,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xFFB2C0E1),
                                child: Icon(
                                  Icons.mode_of_travel_rounded,
                                  color: Color(0xFF0F3892),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Planner',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF737373),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ServiceStatusScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xFFB2C0E1),
                                child: Icon(
                                  Icons.design_services_outlined,
                                  color: Color(0xFF0F3892),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Service Status',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF737373),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xFFB2C0E1),
                                child: Icon(
                                  Icons.card_giftcard_outlined,
                                  color: Color(0xFF0F3892),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Rewards',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF737373),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const FareCalculatorScreen(),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xFFB2C0E1),
                                child: Icon(
                                  Icons.calculate_outlined,
                                  color: Color(0xFF0F3892),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Fare Calculator',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF737373),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xFFB2C0E1),
                                child: Icon(
                                  Icons.phone_in_talk_outlined,
                                  color: Color(0xFF0F3892),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Contact Us',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF737373),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const StationScreen(type: 2),
                            ),
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xFFB2C0E1),
                                child: Icon(
                                  Icons.commute,
                                  color: Color(0xFF0F3892),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Stations',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF737373),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Column(
                            children: const [
                              CircleAvatar(
                                backgroundColor: Color(0xFFB2C0E1),
                                child: Icon(
                                  Icons.policy_outlined,
                                  color: Color(0xFF0F3892),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'AIG Policy',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF737373),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            color: const Color(0xFFFDEBE9),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Highlights & Promotions',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text('View More'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'News & Announcemets',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text('View More'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const ThemeBottomAppbar(
        selectedIndex: 0,
      ),
    );
  }

  Widget headerWidget(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: Clipper(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.15,
            color: const Color(0xFF0F3892),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 20,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 6),
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const Text(
                    'Please enter your destination',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Kampung Batu, Kuala Lumpur',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.red,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
