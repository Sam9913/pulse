import 'package:flutter/material.dart';

class CheckScheduleScreen extends StatelessWidget {
  const CheckScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 64, 16, 16),
            decoration: const BoxDecoration(
              color: Color(0xFF0F3892),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.location_searching_outlined,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Your location'),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('Destination'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Icon(
                        Icons.autorenew,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Today 10:00AM',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Preferences',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Suggested Routes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0F3892),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: const [
                    Text(
                      '28 min',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text('Arrive at 10:28AM'),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1),
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.directions_walk,
                        color: Colors.black38,
                      ),
                      const Text(
                        '2',
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.black38,
                        size: 20,
                      ),
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
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text('Leaves at 10:05AM from station name'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
