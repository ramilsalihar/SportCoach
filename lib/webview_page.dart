import 'package:flutter/material.dart';
import 'package:sport_coach/services/remote_config_service.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key});

  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  final cookieManager = WebViewCookieManager();
  var controller = WebViewController();
  String initialUrl = '';

  Future<void> initializeRemoteConfig() async {
    await RemoteConfigService().initialize();
    setState(() {
      initialUrl = RemoteConfigService().urlLink;
    });
  }

  @override
  void initState() {
    super.initState();

    initializeRemoteConfig();

    cookieManager.setCookie(
      const WebViewCookie(
        name: 'name',
        value: 'value',
        domain: 'domain',
      ),
    );

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView'),
      ),
      body: WebViewWidget(
        controller: controller
          ..loadRequest(
            Uri.parse(initialUrl),
          ),
      ),
    );
  }
}
