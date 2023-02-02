import 'package:flutter/material.dart';
import 'package:pulse/screen/about_pulse_screen.dart';
import 'package:pulse/screen/privacy_policy_screen.dart';
import 'package:pulse/screen/terms_condition_screen.dart';
import 'package:pulse/screen/travel_with_us.dart';
import 'package:pulse/widget/theme_bottom_appbar.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TravelWithUsScreen(),
                  ),
                );
              },
              leading: const Icon(
                Icons.contacts_outlined,
                color: Color(0xFF0F3892),
                size: 35,
              ),
              title: const Text(
                'Travel With Us',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AboutPulseScreen(),
                  ),
                );
              },
              leading: const Icon(
                Icons.bookmark_border_outlined,
                color: Color(0xFF0F3892),
                size: 35,
              ),
              title: const Text(
                'About PULSE',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TermsConditionScreen(),
                  ),
                );
              },
              leading: const Icon(
                Icons.description_outlined,
                color: Color(0xFF0F3892),
                size: 35,
              ),
              title: const Text(
                'Terms & Conditions',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PrivacyPolicyScreen(),
                  ),
                );
              },
              leading: const Icon(
                Icons.privacy_tip_outlined,
                color: Color(0xFF0F3892),
                size: 35,
              ),
              title: const Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.account_box_outlined,
                color: Color(0xFF0F3892),
                size: 35,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const ThemeBottomAppbar(
        selectedIndex: 4,
      ),
    );
  }
}
