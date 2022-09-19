import 'dart:developer';
import 'package:ai_interior/utils/routes.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final String arg = ModalRoute.of(context)?.settings.arguments as String;
    log(arg);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: arg == 'en'
                ? const Text("Welcome Page")
                : arg == "ne"
                    ? const Text("स्वागत छ")
                    : arg == 'ja'
                        ? const Text("いらっしゃいませ")
                        : const Text("Welcome"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(camerascreen);
            },
            child: arg == 'en'
                ? const Text("Start now")
                : arg == "ne"
                    ? const Text("सुरु गर्नुहोस्")
                    : arg == 'ja'
                        ? const Text("今すぐ開始")
                        : const Text("Welcome"),
          ),
        ],
      ),
    );
  }
}
