import 'package:flutter/material.dart';

class RegisterSecureTextField extends StatefulWidget {
  final String label;
  final IconData icon;

  final String errorText;
  final String hint;
  final Function onChange;
  final Function error;

  const RegisterSecureTextField(
      {Key key,
      this.label,
      this.errorText,
      this.onChange,
      this.icon,
      this.error, this.hint})
      : super(key: key);

  @override
  _RegisterSecureTextFieldState createState() =>
      _RegisterSecureTextFieldState();
}

class _RegisterSecureTextFieldState extends State<RegisterSecureTextField> {
  bool see = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: TextFormField(
        textAlign: TextAlign.left,
        onChanged: widget.onChange,
        obscureText: see,
        validator: (value) {
          if (value.isEmpty) {
            return "${widget.label} مطلوب";
          }
          return null;
        },
        decoration: InputDecoration(
          labelText: widget.label,
          errorText: widget.errorText ?? null,
          hintText: widget.hint,
          suffixIcon: IconButton(
            icon: Icon(
              see == true ? Icons.visibility_off : Icons.visibility,
            ),
            onPressed: () {
              setState(() {
                see = !see;
              });
            },
          ),
          contentPadding: EdgeInsets.only(top: 20, right: 20),
        ),
      ),
    );
  }
}
