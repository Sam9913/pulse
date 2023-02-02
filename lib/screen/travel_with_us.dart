import 'package:flutter/material.dart';

class TravelWithUsScreen extends StatelessWidget {
  const TravelWithUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Travel With Us'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          children: [
            Row(
              children: const [
                Expanded(
                  flex: 10,
                  child: Text(
                    'RapidKL',
                  ),
                ),
                Icon(
                  Icons.travel_explore_rounded,
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'RapidPenang',
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'RapidKuantan',
                ),
                Icon(
                  Icons.keyboard_arrow_right_rounded,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
