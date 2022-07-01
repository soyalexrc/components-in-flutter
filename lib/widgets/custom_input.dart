import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {Key? key,
      this.helperText,
      this.labelText,
      this.hintText,
      this.icon,
      this.suffixIcon,
      this.prefixIcon,
      this.initialValue,
      this.keyboardType,
      this.isPassword = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  final String? helperText;
  final String? labelText;
  final String? hintText;
  final String? initialValue;
  final TextInputType? keyboardType;
  final bool isPassword;
  final IconData? icon;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String formProperty;
  final Map<String, String> formValues;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      initialValue: initialValue,
      obscureText: isPassword,
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        formValues[formProperty] = value;
      } ,
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'minimo 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        counterText: '3 caracteres',
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
      ),
    );
  }
}
