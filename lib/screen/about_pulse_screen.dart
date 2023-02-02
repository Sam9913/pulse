import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AboutPulseScreen extends StatelessWidget {
  const AboutPulseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About PULSE'),
        elevation: 0,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse('https://myrapid.com.my/pulse/mobile-app/'),
        ),
      ),
    );
  }
}
