import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AigPolicyScreen extends StatelessWidget {
  const AigPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AIG Policy'),
        elevation: 0,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse('https://shop.myrapid.com.my/'),
        ),
      ),
    );
  }
}
