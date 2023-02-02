import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class TermsConditionScreen extends StatelessWidget {
  const TermsConditionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms & Conditions'),
        elevation: 0,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse('https://myrapid.com.my/pulse/pulse-end-user-license-agreement/'),
        ),
      ),
    );
  }
}
