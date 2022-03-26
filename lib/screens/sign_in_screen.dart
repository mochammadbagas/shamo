// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Widget Header
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          // Untuk membuat Text Rata Kiri
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Login',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              'Sign In to Continue',
              style: subtitleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    // Widget Email Input
    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70),
        child: Column(
          // Untuk membuat Text Rata Kiri
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'Email Address',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_email.png',
                      width: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            // Untuk membuat Text Rata Kiri
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              header(),
              emailInput(),
            ],
          ),
        ),
      ),
    );
  }
}
