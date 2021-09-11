import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetPesan extends StatelessWidget {
  final String hintText;
  final String labelText;
  final int maxLength;
  final TextInputType inputType;

  final ValueChanged<String?> onSaved;

  const WidgetPesan(
      {Key? key,
      required this.hintText,
      required this.labelText,
      required this.maxLength,
      this.inputType = TextInputType.text,
      required this.onSaved})
      : super(key: key);

  List<TextInputFormatter> get _inputFormatters {
    List<TextInputFormatter> _formatters = <TextInputFormatter>[];
    switch (this.inputType.index) {
      case 3:
        _formatters.add(FilteringTextInputFormatter.digitsOnly);
        break;
      case 6:
        _formatters.add(FilteringTextInputFormatter.allow(RegExp(" ")));
        break;
      case 9:
        break;
    }
    return _formatters;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: this.inputType,
      inputFormatters: this._inputFormatters,
      decoration: new InputDecoration(
          hintText: this.hintText,
          labelText: this.labelText,
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(20.0),
          )),
      maxLength: maxLength,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Input is Required';
        }
        return null;
      },
      onSaved: this.onSaved,
    );
  }
}
