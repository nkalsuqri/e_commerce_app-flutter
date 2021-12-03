import 'package:e_commerce_app/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFromFaild extends StatefulWidget {
  final String text;
  final String hint;
  final Function onsave;
  final Function validator;

  CustomTextFromFaild({this.text, this.hint, this.onsave, this.validator});

  @override
  _CustomTextFromFaildState createState() => _CustomTextFromFaildState();
}

class _CustomTextFromFaildState extends State<CustomTextFromFaild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: widget.text,
            fontSize: 14,
            color: Colors.grey.shade900,
            algiment: Alignment.centerLeft,
          ),
          TextFormField(
            onSaved: widget.onsave,
            validator: widget.validator,
            decoration: InputDecoration(
                hintText: widget.hint,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                fillColor: Colors.white),
          )
        ],
      ),
    );
  }
}
