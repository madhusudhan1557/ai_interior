import 'package:ai_interior/includes/borderbox.dart';
import 'package:ai_interior/utils/appcolors.dart';
import 'package:ai_interior/utils/language.dart';
import 'package:ai_interior/utils/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.customwhite,
        centerTitle: true,
        title: const Text(
          "Choose a Language",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: AppColors.customwhite,
        height: size.height,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: padding.top * 0.8,
            vertical: padding.top,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: Language.languagelist().length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: size.height / 3.84,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(
                    welcome,
                    arguments: Language.languagelist()
                        .map((e) => e.languagecode)
                        .toList()[index]
                        .toString(),
                  );
                },
                child: BorderBox(
                  color1: Colors.grey,
                  color: Colors.white,
                  radius: 4.0,
                  child: Center(
                    child: Text(
                      Language.languagelist()
                          .map((e) => "${e.flag}  ${e.name}")
                          .toList()[index]
                          .toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
