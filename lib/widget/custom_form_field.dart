import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meenmanam/themes/colors.dart';

class CustomFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool? isDatePicker;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final String? hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;

  const CustomFormField({
    super.key,
    required this.label,
    required this.controller,
    this.isDatePicker = false,
    this.keyboardType,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.inputFormatters,
    this.textInputAction,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          textInputAction: textInputAction ?? TextInputAction.next,
          readOnly: isDatePicker ?? false,
          inputFormatters: inputFormatters,
          onFieldSubmitted: onFieldSubmitted,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            fillColor: AppColors.white,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
          ),
          onTap:
              (isDatePicker ?? false)
                  ? () async {
                    FocusScope.of(context).requestFocus(FocusNode());
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (date != null) {
                      controller.text =
                          "${date.day}/${date.month}/${date.year}";
                    }
                  }
                  : null,
          validator:
              validator ??
              (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your $label';
                }
                return null;
              },
        ),
      ],
    );
  }
}
