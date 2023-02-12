import 'package:flutter/material.dart';
import 'package:pulse/screen/feedback_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFB2C0E1).withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Standard Operating Hours',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Mon - Fri',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '7.00AM - 8.30PM',
                        style: TextStyle(
                          color: Color(0xFF0F3892),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sat - Sun & Public Holiday',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        '8.30AM - 5.30PM',
                        style: TextStyle(
                          color: Color(0xFF0F3892),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFFB2C0E1).withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: InkWell(
                      onTap: () {
                        launchUrl(
                          Uri(
                            scheme: 'tel',
                            path: '0378852585'
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Call Us',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xFF0F3892),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: InkWell(
                      onTap: (){
                        launchUrl(
                          Uri.parse('https://www.facebook.com/messages/t/124778030879436'),
                        );
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons/messenger.png',
                            width: 20,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Message Us',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xFF0F3892),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const FeedbackScreen(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.email_outlined),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Give Feedback',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
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
    );
  }
}
