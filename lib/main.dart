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
        // App Title
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
            showToastBar().show(context);
          },
          child: Text('Click on me!'),
        ),
      ),
    );
  }

// Create a method
  DelightToastBar showToastBar() {
    return DelightToastBar(
      // Firstly, create a builder, which returns us ToastCard()
      builder: (context) => const ToastCard(
        // Title
        title: Text('Message'),
        // Leading, it can be everything, but usually Icon or Text
        leading: Icon(CupertinoIcons.bell),
      ),

      // Than we can change properties of showing our toast

      // Duration
      snackbarDuration: Durations.extralong4,

      // Position (Top, Bottom)
      position: DelightSnackbarPosition.top,

      // AutoDismiss (It disappear after time)
      autoDismiss: true,
    );
  }
}
