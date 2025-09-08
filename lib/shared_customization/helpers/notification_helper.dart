import 'dart:io';

import 'package:first_aid/shared_customization/helpers/banner_helper.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_timezone/flutter_timezone.dart';

class NotificationHelper {
  // Singleton instance
  static final NotificationHelper _instance = NotificationHelper._internal();

  // Private constructor
  NotificationHelper._internal();

  // Factory constructor to return the singleton instance
  factory NotificationHelper() {
    return _instance;
  }

  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  Future<void> requestNotificationPermission() async {
    final status = await Permission.notification.status;

    if (!status.isGranted) {
      final result = await Permission.notification.request();
      if (result.isGranted) {
        showSuccessBanner(content: "Đã cấp quyền thông báo");
      } else {
        showErrorBanner(content: "Người dùng từ chối quyền thông báo");
      }
    } else {
      showSuccessBanner(content: "Quyền thông báo đã được cấp");
    }
  }

  Future<void> initializeNotifications() async {
    try {
      // Cấu hình múi giờ
      tz.initializeTimeZones();
      final String currentTimeZone = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(currentTimeZone));

      requestNotificationPermission();

      flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

      const AndroidNotificationChannel channel = AndroidNotificationChannel(
        'high_importance_channel', // id
        'High Importance Notifications', // title
        // sound: RawResourceAndroidNotificationSound('voice_received'),
        importance: Importance.max,
      );
      if (Platform.isAndroid) {
        await flutterLocalNotificationsPlugin
            .resolvePlatformSpecificImplementation<
                AndroidFlutterLocalNotificationsPlugin>()
            ?.createNotificationChannel(channel);

        var initializationSettingsAndroid =
            const AndroidInitializationSettings('@mipmap/ic_launcher');
        var initializationSettings =
            InitializationSettings(android: initializationSettingsAndroid);

        await flutterLocalNotificationsPlugin.initialize(
          initializationSettings,
          onDidReceiveNotificationResponse: (response) =>
              onDidReceiveNotificationResponse(response),
          // Xử lý khi người dùng nhấn vào thông báo
          // onDidReceiveBackgroundNotificationResponse: (response) =>
          //     onDidReceiveBackgroundNotificationResponse(
          //         response), // Xử lý khi người dùng nhấn vào thông báo từ nền
        );
      }
    } catch (e) {
      print("Error initializing notifications: $e");
    }
  }

  // Hàm callback khi người dùng nhấn vào thông báo
  void onDidReceiveNotificationResponse(
      NotificationResponse notificationResponse) async {
    // Xử lý khi người dùng nhấn vào thông báo (foreground/background)
    // Dựa vào notificationResponse.payload để điều hướng đến màn hình sự kiện tương ứng
    print('Notification tapped with payload: ${notificationResponse.payload}');
  }

  // Hàm callback khi người dùng nhấn vào thông báo từ nền (Android 12+, iOS 10+)
  @pragma('vm:entry-point') // Quan trọng để hàm này chạy được ở background
  void onDidReceiveBackgroundNotificationResponse(
      NotificationResponse notificationResponse) async {
    // Xử lý khi người dùng nhấn vào thông báo từ nền
    print(
        'Background notification tapped with payload: ${notificationResponse.payload}');
  }

  Future<void> scheduleEventNotification({required int id, required String title, required String body,
    required DateTime eventDate, required String payload}) async {
    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      tz.TZDateTime.from(eventDate, tz.local), // Sử dụng múi giờ cục bộ
      NotificationDetails(
        android: AndroidNotificationDetails(
          "reminder_$id", // ID kênh thông báo
          title, // Tên kênh
          channelDescription: 'Thông báo cho các sự kiện đã lên lịch',
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      payload: payload, // Dữ liệu đính kèm để xử lý khi người dùng nhấn vào
    );
  }

  Future<void> scheduleReminderNotification(int id, String title, String body,
      DateTime eventDate, String payload) async {
    final DateTime reminderDate = eventDate.subtract(const Duration(days: 3));

    // Đảm bảo ngày nhắc nhở không ở trong quá khứ
    if (reminderDate.isBefore(DateTime.now())) {
      print('Ngày nhắc nhở đã qua, không thể lên lịch.');
      return;
    }

    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      'Nhắc nhở: $title', // Tiêu đề nhắc nhở
      'Sự kiện "$body" của bạn sẽ diễn ra trong 3 ngày nữa.',
      // Nội dung nhắc nhở
      tz.TZDateTime.from(reminderDate, tz.local),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'reminder_channel_id',
          'Kênh nhắc nhở',
          channelDescription: 'Thông báo nhắc nhở trước sự kiện',
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      payload: payload,
    );
  }

  Future<void> scheduleYearlyRecurringNotification(int id, String title,
      String body, DateTime eventDate, String payload) async {
    // Để lên lịch lặp lại hàng năm, bạn cần lên lịch cho năm hiện tại
    // và sau đó tiếp tục lên lịch cho các năm tiếp theo trong logic của bạn
    // hoặc sử dụng `periodicallyShow` nếu bạn muốn thông báo hiển thị định kỳ
    // nhưng không chính xác vào một ngày cụ thể hàng năm.

    // Đối với ngày giỗ (cụ thể ngày/tháng hàng năm):
    // Bạn cần tính toán thời gian cho năm hiện tại hoặc năm tiếp theo nếu ngày đã qua.
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(
      tz.local,
      now.year,
      // Bắt đầu từ năm hiện tại
      eventDate.month,
      eventDate.day,
      eventDate.hour,
      eventDate.minute,
      eventDate.second,
    );

    // Nếu ngày giỗ trong năm hiện tại đã qua, lên lịch cho năm sau
    if (scheduledDate.isBefore(now)) {
      scheduledDate = tz.TZDateTime(
        tz.local,
        now.year + 1,
        eventDate.month,
        eventDate.day,
        eventDate.hour,
        eventDate.minute,
        eventDate.second,
      );
    }

    await flutterLocalNotificationsPlugin.zonedSchedule(
      id,
      title,
      body,
      scheduledDate,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'yearly_event_channel_id',
          'Kênh sự kiện lặp lại hàng năm',
          channelDescription: 'Thông báo cho các sự kiện lặp lại hàng năm',
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.dateAndTime,
      // Quan trọng: Chỉ khớp ngày và giờ (bỏ qua năm)
      payload: payload,
    );
  }

// Add any additional helper methods related to notifications here
}
