
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:linktreeclone/app/modules/home/controllers/welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'User Profile',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(controller.user.photoURL!),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Display Name : ${controller.user.displayName}',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              controller.user.email!,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: 120),
              child: ElevatedButton(
                child: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                onPressed: () {
                  controller.logout();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
