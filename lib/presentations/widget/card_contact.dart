import 'package:flutter/material.dart';
import 'package:flutter_chat_firebase/core/components/spaces.dart';
import 'package:flutter_chat_firebase/core/constants/colors.dart';

class CardContact extends StatelessWidget {
  const CardContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(26.0),
          child: Image.network(
            'https://media.istockphoto.com/id/2158693457/id/foto/pasfoto-tampak-samping-potret-pebisnis-yang-percaya-diri.jpg?s=2048x2048&w=is&k=20&c=nci_shC5prENxjvAo0EgsLN5lQlgCiL5zOBZiGGYys4=',
            width: 52.0,
            height: 52.0,
            fit: BoxFit.cover,
          ),
        ),
        const SpaceWidth(12),
        const Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aulia",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            Text(
              "auxxxx@gmail.com",
              style: TextStyle(
                fontSize: 12,
                color: AppColors.grey,
              ),
            )
          ],
        ))
      ],
    );
  }
}
