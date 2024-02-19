import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:personal_training_app/model/client_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

int id1 = 0;

class LocalNotification {
  static final FlutterLocalNotificationsPlugin flutterlocalnotificationsplugin =
      FlutterLocalNotificationsPlugin();
  static final onclicknotification = BehaviorSubject<ClientModelM>();
  static Future init() async {
    // initialise the plugin. app_icon needs to be a added as a drawable resource to the Android head project
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings("@mipmap/ic_launcher");
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      onDidReceiveLocalNotification: (id, title, body, payload) => null,
    );
    final LinuxInitializationSettings initializationSettingsLinux =
        LinuxInitializationSettings(defaultActionName: 'Open notification');
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin,
            linux: initializationSettingsLinux);
    flutterlocalnotificationsplugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse: onNotificationTap,
        onDidReceiveBackgroundNotificationResponse: onNotificationTap);
  }

  static Future showNotification({
    required String id,
    required String title,
    required String body,
    required ClientModelM payload,
  }) async {
    tz.initializeTimeZones();
    id1++;
    var localtime = tz.local;
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'your channel $id',
      'your channel name$id',
      channelDescription: 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );
    NotificationDetails notificationDetails =
        NotificationDetails(android: androidNotificationDetails);
    await flutterlocalnotificationsplugin
        .show(id1, title, body, notificationDetails, payload: payload.id);
  }

  static void onNotificationTap(NotificationResponse notificationresponse) {
    onclicknotification.add(notificationresponse.payload! as ClientModelM);
  }
}
