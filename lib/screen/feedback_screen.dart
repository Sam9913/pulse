import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'We\'d like to hear from you. Send us your feedback below in the form below.',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'EMAIL',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFF0F3892)),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'SUBJECT',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFF0F3892)),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'MESSAGE',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Color(0xFF0F3892)),
                ),
              ),
              maxLines: 5,
              maxLength: 1000,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'MEDIA',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 24,
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text(
                'SUBMIT',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              color: Color(0xFF0F3892),
            ),
          ],
        ),
      ),
    );
  }
}
