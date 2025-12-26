import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meenmanam/common/constant.dart';
import 'package:meenmanam/store/login_store.dart';

class LoginController extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _pinCodeController = TextEditingController();
  bool _isLoading = false;
  final LoginStore loginStore = LoginStore();

  TextEditingController get mobileController => _mobileController;
  TextEditingController get pinCodeController => _pinCodeController;
  bool get isLoading => _isLoading;

  void setIsLoading(bool value) {
    _isLoading = value;
  }

  String? validateMob(String value) {
    if (value.isEmpty) {
      return 'Please enter mobile number';
    }
    if (value.length != 10) {
      return 'Mobile number must be 10 digits';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  String? validatePin(String value) {
    if (value.isEmpty) {
      return 'Please enter pin code';
    }
    if (value.length != 6) {
      return 'Pin code must be 6 digits';
    }
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
      return 'Please enter valid pin code';
    }
    return null;
  }

  Future<void> handleLogin(BuildContext context) async {
    FocusScope.of(context).unfocus();
    if (!formKey.currentState!.validate()) {
      return;
    }
    setIsLoading(true);
    try {
      await loginStore.login();
      if (context.mounted) {
        context.go(RouteConstant.home);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Login successful!'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      print('Login error: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Login failed: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      setIsLoading(false);
    }
  }

  @override
  void dispose() {
    mobileController.dispose();
    pinCodeController.dispose();
    setIsLoading(false);
    super.dispose();
  }
}
