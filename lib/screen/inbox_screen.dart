import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16),
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 25,
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  flex: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Info: Penutupan Jalan (Laluan T459) text lol',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Pelanggan yang dihormati, Rapid KL ingin memaklumkan bahawa terdapat penutupan di',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        DateFormat('dd-MM-yyyy hh:mm').format(DateTime.now()),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Divider(),
          );
        },
      ),
      /*bottomNavigationBar: ThemeBottomAppbar(
        selectedIndex: 3,
      ),*/
    );
  }
}
