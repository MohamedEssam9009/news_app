import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class WebView extends StatelessWidget {
  WebView({super.key, required this.url});

  final String url;
  WebViewController controller = WebViewController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: controller..loadRequest(Uri.parse(url)),
      ),
    );
  }
}
