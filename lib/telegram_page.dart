import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TelegramExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            String url = 'https://t.me/+oDf_lVJzbNQyYWFi';
            if (await launch(url)) {
              await launch(url);
            } else {
              throw 'Could not launch $url';
            }
          },
          child: Text('Open Telegram'),
        ),
      ),
    );
  }
}