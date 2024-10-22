import 'package:flutter/material.dart';
import 'package:notifications_app/screens/screens.dart';
import 'package:notifications_app/services/push_notifications_service.dart';

Future<void> main() async {
  await PushNotificationService.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    PushNotificationService.messageStream.listen((message) {
      print(message);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {'home': (_) => HomeScreen(), 'message': (_) => MessageScreen()},
    );
  }
}
