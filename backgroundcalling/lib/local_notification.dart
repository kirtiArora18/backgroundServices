import 'package:flutter_local_notifications/flutter_local_notifications.dart';

//define this method in global scope not a class scope
void showNotificationMessage(String? description, String? title) {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
  flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
  var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
  var iOS = new IOSInitializationSettings();
  var initSettings = new InitializationSettings(android: android, iOS: iOS);
  flutterLocalNotificationsPlugin.initialize(initSettings,
      onSelectNotification: null);

  String groupKey = 'com.example.general-notification-channel';
  var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
    'general-notification-channel',
    'general-notification-channel',
    'general-notification-channel',
    importance: Importance.max,
    priority: Priority.high,
    groupKey: groupKey,
    //   setAsGroupSummary: true
  );

  var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
  NotificationDetails platformChannelSpecifics = new NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics);
  flutterLocalNotificationsPlugin.show(
      0, title, description, platformChannelSpecifics);
}
