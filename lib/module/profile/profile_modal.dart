import 'dart:io';

class ProfileModel {
  String firstName;
  String lastName;
  String phone;
  String email;
  File? imageFile;
  String? imageUrl;

  ProfileModel({
    this.firstName = '',
    this.lastName = '',
    this.phone = '',
    this.email = '',
    this.imageFile,
    this.imageUrl,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> data) {
    return ProfileModel(
      firstName: data['fullName'] ?? '',
      lastName: data['lastName'] ?? '',
      phone: data['phone'] ?? '',
      email: data['email'] ?? '',
      imageUrl: data['imageUrl'],
    );
  }
}
