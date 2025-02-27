import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/core/components/spaces.dart';
import 'package:flutter_chat_firebase/core/constants/colors.dart';
import 'package:flutter_chat_firebase/core/extensions/build_context_ext.dart';
import 'package:flutter_chat_firebase/presentations/page/login_page.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                "https://media.istockphoto.com/id/2158693457/id/foto/pasfoto-tampak-samping-potret-pebisnis-yang-percaya-diri.jpg?s=2048x2048&w=is&k=20&c=nci_shC5prENxjvAo0EgsLN5lQlgCiL5zOBZiGGYys4=",
                width: 140.0,
                height: 140.0,
                fit: BoxFit.cover,
              ),
            ),
            const SpaceHeight(16),
            const Text(
              "Nama",
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.black,
              ),
            ),
            const SpaceHeight(12),
            Container(
              width: context.deviceWidth,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                border: Border.all(
                  color: AppColors.primary,
                  width: 2,
                ),
              ),
              child: const Text(
                "Aulia Permatasari",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
            const SpaceHeight(16),
            const Text(
              "Email",
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.black,
              ),
            ),
            const SpaceHeight(12),
            Container(
              width: context.deviceWidth,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                border: Border.all(
                  color: AppColors.primary,
                  width: 2,
                ),
              ),
              child: const Text(
                'auliaxxx@gmail.com',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
            const SpaceHeight(16),
            const Text(
              "Nomor Telepon",
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.black,
              ),
            ),
            const SpaceHeight(12),
            Container(
              width: context.deviceWidth,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
                border: Border.all(
                  color: AppColors.primary,
                  width: 2,
                ),
              ),
              child: const Text(
                "087888328121",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    "Logout",
                    style: TextStyle(color: AppColors.white, fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
