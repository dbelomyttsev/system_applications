import 'package:flutter/material.dart';
import 'package:system_applications/phone_page.dart';
import 'package:system_applications/route_page.dart';
import 'package:system_applications/telegram_page.dart';
import 'package:system_applications/webview_page.dart';

import 'camera_page.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/home': (context) => RoutePage(),
    '/firstpage': (context) => CameraExample(),
    '/secondpage': (context) => TelegramExample(),
    '/thirdpage': (context) => CallExample(),
    '/fourthpage': (context) => WebViewExample(),
  },
));


