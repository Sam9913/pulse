import 'package:flutter/material.dart';
import 'package:pulse/screen/home_screen.dart';
import 'package:pulse/screen/more_screen.dart';
import 'package:pulse/screen/near_me_screen.dart';

import '../screen/arrival_time_screen.dart';

class ThemeBottomAppbar extends StatelessWidget {
  final int selectedIndex;
  const ThemeBottomAppbar({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                if (selectedIndex != 0) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                }
              },
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color: selectedIndex == 0 ? Colors.red : Colors.grey,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: selectedIndex == 0 ? const Color(0xFF0F3892) : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                if (selectedIndex != 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ArrivalTimeScreen(),
                    ),
                  );
                }
              },
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.timer_outlined,
                    color: selectedIndex == 1 ? Colors.red : Colors.grey,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Schedule',
                    style: TextStyle(
                      color: selectedIndex == 1 ? const Color(0xFF0F3892) : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                if (selectedIndex != 2) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const NearMeScreen(),
                    ),
                  );
                }
              },
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.near_me_outlined,
                    color: selectedIndex == 2 ? Colors.red : Colors.grey,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Near Me',
                    style: TextStyle(
                      color: selectedIndex == 2 ? const Color(0xFF0F3892) : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            /*InkWell(
              onTap: () {
                if (selectedIndex != 3) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => InboxScreen(),
                    ),
                  );
                }
              },
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.inbox_outlined,
                    color: selectedIndex == 3 ? Colors.red : Colors.grey,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Inbox',
                    style: TextStyle(
                      color: selectedIndex == 3 ? Color(0xFF0F3892) : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),*/
            InkWell(
              onTap: () {
                if (selectedIndex != 4) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const MoreScreen(),
                    ),
                  );
                }
              },
              child: Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.more_horiz_rounded,
                    color: selectedIndex == 4 ? Colors.red : Colors.grey,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'More',
                    style: TextStyle(
                      color: selectedIndex == 4 ? const Color(0xFF0F3892) : Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
