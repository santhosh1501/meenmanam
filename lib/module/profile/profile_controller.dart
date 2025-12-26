import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meenmanam/module/profile/profile_modal.dart';

class ProfileController {
  final formKey = GlobalKey<FormState>();
  late TextEditingController firstController;
  late TextEditingController lastController;
  late TextEditingController phoneController;
  late TextEditingController emailController;

  late ProfileModel _profile;

  ProfileModel get profile => _profile;

  ProfileController({Map<String, dynamic>? user}) {
    _profile = user != null ? ProfileModel.fromMap(user) : ProfileModel();
    firstController = TextEditingController(text: _profile.firstName);
    lastController = TextEditingController(text: _profile.lastName);
    phoneController = TextEditingController(text: _profile.phone);
    emailController = TextEditingController(text: _profile.email);
  }

  Future<void> pickImage(ImageSource imageType) async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(
        source: imageType,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        _profile.imageFile = File(pickedFile.path);
      }
    } catch (e) {
      print('Error picking image: $e');
      // You can add a snackbar or dialog here to show error to user
    }
  }

  void saveProfile(BuildContext context, dynamic formKey) {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile saved successfully!')),
      );
    }
  }

  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Email';
    }
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  void dispose() {
    firstController.dispose();
    lastController.dispose();
    phoneController.dispose();
    emailController.dispose();
  }
}
