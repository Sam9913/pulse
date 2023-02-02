import 'package:flutter/material.dart';

class ServiceStatusScreen extends StatelessWidget {
  const ServiceStatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Service Status'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEB7203),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_line_ampang.png',
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'AGL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text('Ampang Line'),
                  ),
                ),
                const Text(
                  'Normal Service',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF047835),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_line_kajang-01.png',
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'KGL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text('Kajang Line'),
                  ),
                ),
                const Text(
                  'Normal Service',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF80BD01),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_line_kl-monorail.png',
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'MRL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text('KL Monorail Line'),
                  ),
                ),
                const Text(
                  'Normal Service',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDD0330),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_line_kelana-jaya.png',
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'KJL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text('Kelana Jaya Line'),
                  ),
                ),
                const Text(
                  'Service Delay',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFCD330),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_line_putrajaya-01.png',
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'PYL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text('Putrajaya Line'),
                  ),
                ),
                const Text(
                  'Normal Service',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color(0xFF7A212E),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/icons/icon_line_sri-petaling.png',
                        height: 30,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'SPL',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 8,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Text('Sri Petaling Line'),
                  ),
                ),
                const Text(
                  'Normal Service',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
