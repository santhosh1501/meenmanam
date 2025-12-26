import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meenmanam/module/login/login_controller.dart';
import 'package:meenmanam/module/styles.dart';
import 'package:meenmanam/themes/colors.dart';
import 'package:meenmanam/themes/image.dart';
import 'package:meenmanam/widget/custom_form_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final LoginController _loginController = LoginController();

  @override
  void dispose() {
    _loginController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Styles.height(context),
        width: Styles.width(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.backgroundlogo),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Form(
              key: _loginController.formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: Styles.height(context) * 0.20),
                    Text(
                      'Welcome to Meenmanam',
                      style: Styles.headerTextStyles.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          CustomFormField(
                            label: 'Mobile Number',
                            controller: _loginController.mobileController,
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            validator:
                                (value) =>
                                    _loginController.validateMob(value ?? ''),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ],
                            prefixIcon: const Icon(Icons.phone),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).nextFocus();
                            },
                          ),
                          const SizedBox(height: 24),
                          CustomFormField(
                            label: 'Pin Code',
                            controller: _loginController.pinCodeController,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            validator:
                                (value) =>
                                    _loginController.validatePin(value ?? ''),
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(6),
                            ],
                            prefixIcon: const Icon(Icons.pin),
                            onFieldSubmitted: (value) {
                              FocusScope.of(context).unfocus();
                              if (_loginController
                                          .mobileController
                                          .text
                                          .length ==
                                      10 &&
                                  _loginController
                                          .pinCodeController
                                          .text
                                          .length ==
                                      6) {}
                            },
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 44),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 24),
                      child: SizedBox(
                        width: Styles.width(context) * 0.9,
                        height: 56,
                        child: AnimatedBuilder(
                          animation: _loginController,
                          builder: (context, child) {
                            return FloatingActionButton(
                              onPressed:
                                  _loginController.isLoading
                                      ? null
                                      : () =>
                                          _loginController.handleLogin(context),
                              backgroundColor: AppColors.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 2,
                              child:
                                  _loginController.isLoading
                                      ? const SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: CircularProgressIndicator(
                                          color: AppColors.white,
                                          strokeWidth: 2,
                                        ),
                                      )
                                      : Text(
                                        'Login',
                                        style: Styles.orderTextStyles,
                                      ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(height: Styles.height(context) * 0.1),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
