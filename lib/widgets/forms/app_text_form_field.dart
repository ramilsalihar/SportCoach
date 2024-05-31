import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.title,
    required this.controller,
    this.keyboardType,
    // required this.onChanged,
  });

  final String hintText;
  final String title;
  final TextEditingController controller;
  final TextInputType? keyboardType;

  // final void Function(String) onChanged;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: SizedBox(
        height: 45,
        child: TextFormField(
          cursorColor: Colors.white,
          style: theme.textTheme.headlineSmall,
          decoration: InputDecoration(
            isDense: true,
            hintText: widget.hintText ?? '',
            hintStyle: theme.textTheme.headlineSmall!.copyWith(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            prefixIcon: Padding(
                padding: const EdgeInsets.all(13),
                child: Text(
                  widget.title,
                  style: theme.textTheme.displaySmall,
                )),
          ),
          controller: widget.controller,
          onChanged: (value) {},
          keyboardType: widget.keyboardType ?? TextInputType.text,
          maxLines: null,
        ),
      ),
    );
  }
}
