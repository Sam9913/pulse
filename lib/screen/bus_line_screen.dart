import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BusLineScreen extends StatelessWidget {
  const BusLineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KL Bus Line'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: Uri.parse('https://myrapidbus.prasarana.com.my/kiosk'),
        ),
      ),
    );
  }
}
