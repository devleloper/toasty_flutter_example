import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:delightful_toast/toast/utils/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(
        appTitle: 'Toasty Example',
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.appTitle});

  final String appTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            DelightToastBar(
              builder: (context) => ToastCard(
                title: Text('Message'),
                leading: Icon(CupertinoIcons.bell),
              ),
              snackbarDuration: Durations.extralong4,
              position: DelightSnackbarPosition.top,
              autoDismiss: true,
            ).show(context);
          },
          child: Text('Click on me!'),
        ),
      ),
    );
  }
}
