// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String id;
  final String userName;
  final String email;
  final String photo;

  UserModel({
    required this.id,
    required this.userName,
    required this.email,
    required this.photo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userName': userName,
      'email': email,
      'photo': photo,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? '',
      userName: map['userName'] ?? '',
      email: map['email'] ?? '',
      photo: map['photo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
