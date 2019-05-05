import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('Valor do payload: ' + payload);
    }
  }

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();

    var initializationSettingsAndroid =
        new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();

    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);

    flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Notificações"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () async {
              var androidPlatformChannelSpecifics =
                  new AndroidNotificationDetails('your channel id',
                      'your channel name', 'your channel description',
                      importance: Importance.Max, priority: Priority.High);
              var iOSPlatformChannelSpecifics = new IOSNotificationDetails();

              var platformChannelSpecifics = new NotificationDetails(
                  androidPlatformChannelSpecifics, iOSPlatformChannelSpecifics);

              await flutterLocalNotificationsPlugin.show(
                  0,
                  'Primeira notificação!',
                  'OLá Mundo',
                  platformChannelSpecifics,
                  payload: 'Teste payload');
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          "Push notifications",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
