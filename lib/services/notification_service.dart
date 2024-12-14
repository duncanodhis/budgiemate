import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;

  Future<void> initializeNotifications() async {
    await _fcm.requestPermission();
    _fcm.onMessage.listen((RemoteMessage message) {
      print('Notification received: ${message.notification?.title}');
    });
  }

  Future<void> sendNotification(String token, String title, String body) async {
    // Use an external service like Firebase Functions to send notifications
  }
}
