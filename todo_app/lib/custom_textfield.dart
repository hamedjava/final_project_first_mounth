import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatefulWidget {
  CustomTextfield({required this.title, required this.contoller});

  final String title;
  TextEditingController contoller = TextEditingController();

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              controller: widget.contoller,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }

                // using regular expression
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }

                // the email is valid
                return null;
              },
              decoration: InputDecoration(
                hintText: widget.title,
                labelText: widget.title,
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.redAccent)),
                helperText: 'for example "example@gmail.com",',
                helperStyle: TextStyle(color: Colors.white),
                labelStyle: TextStyle(color: Colors.white),
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1,
                        style: BorderStyle.solid,
                        color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
