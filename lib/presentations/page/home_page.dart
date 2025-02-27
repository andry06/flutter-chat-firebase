// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/core/components/spaces.dart';
import 'package:flutter_chat_firebase/core/constants/colors.dart';
import 'package:flutter_chat_firebase/data/models/profile_model.dart';
import 'package:flutter_chat_firebase/presentations/widget/card_message.dart';
import 'package:flutter_chat_firebase/core/extensions/build_context_ext.dart';

class HomePage extends StatefulWidget {
  UserCredential? currentUser;
  HomePage({
    super.key,
    this.currentUser,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary,
              AppColors.secondary,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  const SpaceHeight(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 44.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: const Icon(Icons.search, color: AppColors.white),
                      ),
                      const Text(
                        "Jago Chat",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white),
                      ),
                      const CircleAvatar(
                        backgroundColor: AppColors.white,
                        radius: 22,
                        child: CircleAvatar(
                          radius: 21,
                          backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/2158693457/id/foto/pasfoto-tampak-samping-potret-pebisnis-yang-percaya-diri.jpg?s=2048x2048&w=is&k=20&c=nci_shC5prENxjvAo0EgsLN5lQlgCiL5zOBZiGGYys4=',
                          ),
                        ),
                      )
                    ],
                  ),
                  const SpaceHeight(32),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SpaceWidth(16);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Container(
                                width: 58.0,
                                height: 58.0,
                                decoration: BoxDecoration(
                                  color: AppColors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(29.0),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: AppColors.white,
                                ),
                              ),
                              const SpaceHeight(8),
                              const Text(
                                'Add Story',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          );
                        }
                        return _itemProfile(10);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              margin: EdgeInsets.only(
                top: context.deviceHeight * 0.28,
              ),
              width: MediaQuery.of(context).size.width,
              height: context.deviceHeight * 0.73,
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(44),
                  topRight: Radius.circular(44),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 4,
                    width: 30,
                    decoration: const BoxDecoration(
                      color: Color(0xffE6E6E6),
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                    ),
                  ),
                  const SpaceHeight(16),
                  Expanded(
                      child: ListView.separated(
                    itemCount: 10,
                    itemBuilder: (contex, index) {
                      return InkWell(
                        child: CardMessage(
                          user: ProfileModel(
                              name: 'Yanto',
                              photoUrl:
                                  'https://media.istockphoto.com/id/2158693457/id/foto/pasfoto-tampak-samping-potret-pebisnis-yang-percaya-diri.jpg?s=2048x2048&w=is&k=20&c=nci_shC5prENxjvAo0EgsLN5lQlgCiL5zOBZiGGYys4='),
                          index: index,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SpaceHeight(16);
                    },
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemProfile(int profile) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(29.0),
          child: Image.network(
            'https://media.istockphoto.com/id/2158693457/id/foto/pasfoto-tampak-samping-potret-pebisnis-yang-percaya-diri.jpg?s=2048x2048&w=is&k=20&c=nci_shC5prENxjvAo0EgsLN5lQlgCiL5zOBZiGGYys4=',
            width: 58.0,
            height: 58.0,
            fit: BoxFit.cover,
          ),
        ),
        const SpaceHeight(8),
        const Text(
          'userName',
          style: TextStyle(
            fontSize: 14.0,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
