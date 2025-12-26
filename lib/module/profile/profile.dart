import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meenmanam/module/profile/profile_controller.dart';
import 'package:meenmanam/module/profile/notification_settings.dart';
import 'package:meenmanam/module/styles.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:meenmanam/widget/custom_form_field.dart';
import 'package:meenmanam/widget/home_header.dart';
import 'package:meenmanam/widget/parallex_scrollview.dart';

class Profile extends StatefulWidget {
  final Map<String, dynamic>? user;
  const Profile({super.key, this.user});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late ProfileController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ProfileController(user: widget.user);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ParallexScrollview(
        headerWidget: HomeHeader(),
        childWidget: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Form(
              key: _controller.formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildProfileImage(),
                  const SizedBox(height: 16),
                  CustomFormField(
                    label: 'First Name',
                    controller: _controller.firstController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "First name is required";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomFormField(
                    label: 'Last Name',
                    controller: _controller.lastController,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Last name is required";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomFormField(
                    label: 'Phone',
                    controller: _controller.phoneController,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Phone is required";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).nextFocus();
                    },
                  ),
                  const SizedBox(height: 16),

                  // Notification Settings Button
                  _buildNotificationSettingsButton(),
                  const SizedBox(height: 16),
                  CustomFormField(
                    label: 'Email',
                    controller: _controller.emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "Email is required";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).unfocus();
                      _controller.saveProfile(context, _controller.formKey);
                    },
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      _controller.saveProfile(context, _controller.formKey);
                    },
                    style: Styles.orderButtonStyle,
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    print("_controller.profile.imageFile ${_controller.profile.imageFile}");
    return Center(
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage:
                _controller.profile.imageFile != null
                    ? FileImage(_controller.profile.imageFile!)
                    : null,
            backgroundColor: Colors.grey.shade200,
            child:
                _controller.profile.imageFile == null
                    ? const Text(
                      "SS",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                    : null,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                _showImageSourceDialog();
              },
              child: Container(
                padding: const EdgeInsets.all(6),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showImageSourceDialog() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Choose Image Source',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildImageSourceOption(
                    icon: Icons.camera_alt,
                    label: 'Camera',
                    onTap: () async {
                      Navigator.pop(context);
                      await _controller.pickImage(ImageSource.camera);
                      setState(() {});
                    },
                  ),
                  _buildImageSourceOption(
                    icon: Icons.photo_library,
                    label: 'Gallery',
                    onTap: () async {
                      Navigator.pop(context);
                      await _controller.pickImage(ImageSource.gallery);
                      setState(() {});
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  Widget _buildImageSourceOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColors.primary, size: 30),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationSettingsButton() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.notifications,
            color: AppColors.primary,
            size: 24,
          ),
        ),
        title: const Text(
          'Notification Settings',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        subtitle: const Text(
          'Manage your notification preferences',
          style: TextStyle(fontSize: 14, color: AppColors.grey),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: AppColors.grey,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NotificationSettings(),
            ),
          );
        },
      ),
    );
  }
}
