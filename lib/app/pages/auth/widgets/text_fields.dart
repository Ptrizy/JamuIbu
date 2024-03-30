import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:jamu_ibu/app/utils/colors.dart';
import 'package:jamu_ibu/app/utils/text_styles.dart';

class TextFields extends StatefulWidget {
  const TextFields({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    required this.obscure,
    required this.icon,
    this.openEyeIcon = FluentIcons.eye_20_filled,
    this.closedEyeIcon = FluentIcons.eye_off_20_filled,
  }) : super(key: key);

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType textInputType;
  final bool obscure;
  final IconData openEyeIcon;
  final IconData closedEyeIcon;
  final IconData icon;

  @override
  _TextFieldsState createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  bool isObscure = true;

  @override
  void initState() {
    super.initState();
    isObscure = widget.obscure;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.labelText,
              style: TextStyles.b1BoldN500,
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        SizedBox(
          height: 44,
          child: TextFormField(
            controller: widget.controller,
            keyboardType: widget.textInputType,
            obscureText: isObscure,
            style: TextStyles.b1RegularP500,
            decoration: InputDecoration(
              fillColor: const Color(0xFFE4E9CF),
              filled: true,
              contentPadding: const EdgeInsets.fromLTRB(23, 0, 12, 5),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(width: 0.75),
              ),
              hintText: widget.hintText,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 0.75,
                  color: ColorStyles.p500,
                ),
              ),
              prefixIcon: Icon(widget.icon, color: ColorStyles.p500),
              suffixIcon: widget.obscure
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          isObscure = !isObscure;
                        });
                      },
                      child: Icon(
                        isObscure ? widget.closedEyeIcon : widget.openEyeIcon,
                        color: ColorStyles.p500,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
