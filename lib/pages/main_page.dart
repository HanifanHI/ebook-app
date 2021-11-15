import 'package:ebook_app/pages/home_page.dart';
import 'package:ebook_app/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // * CUSTOM NAVIGATION
    Widget customNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 70,
          color: kWhiteColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/icon-home.png',
                width: 20,
                height: 20,
              ),
              Image.asset(
                'assets/icon-save-outline.png',
                width: 20,
                height: 20,
              ),
              Image.asset(
                'assets/icon-cart.png',
                width: 20,
                height: 20,
              ),
              Image.asset(
                'assets/icon-user.png',
                width: 20,
                height: 20,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          HomePage(),
          customNavigation(),
        ],
      ),
    );
  }
}
