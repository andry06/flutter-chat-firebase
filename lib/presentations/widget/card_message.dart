// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/core/components/spaces.dart';

import 'package:flutter_chat_firebase/data/models/profile_model.dart';

import '../../core/constants/colors.dart';

class CardMessage extends StatelessWidget {
  final ProfileModel user;
  final int index;
  const CardMessage({
    super.key,
    required this.user,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.push(ChatPage(
        //   partnerUser: user,
        // ));
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primary,
            radius: 26,
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(user.photoUrl),
            ),
          ),
          const SpaceWidth(8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  "Last message",
                  style: TextStyle(fontSize: 12.0, color: AppColors.grey),
                )
              ],
            ),
          ),
          const SpaceHeight(16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${(DateTime.now().hour - (1 + index)).toString().padLeft(2, '0')}:${DateTime.now().minute.toString().padLeft(2, '0')}',
                style: TextStyle(
                  fontSize: 12.0,
                  color: AppColors.grey.withOpacity(0.8),
                ),
              ),
              // Container(
              //   height: 22,
              //   width: 22,
              //   decoration: const BoxDecoration(
              //       color: AppColors.red, shape: BoxShape.circle),
              //   child: const Center(
              //     child: Text(
              //       "2",
              //       style: TextStyle(
              //           fontSize: 12.0,
              //           fontWeight: FontWeight.bold,
              //           color: AppColors.white),
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
