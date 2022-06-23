import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppTextFormField extends HookWidget {
  const AppTextFormField({
    Key? key,
    required this.controller,
    required this.isNumeric,
  }) : super(key: key);

  final TextEditingController controller;
  final bool isNumeric;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: TextField(
        keyboardType: isNumeric ? TextInputType.number : TextInputType.name,
        decoration: InputDecoration(
          label: Text(isNumeric ? 'Amount' : 'Name' ),
          isDense: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
        controller: controller,
      ),
    );
  }
}

TextEditingController useListenedTextEditingController({
  required String text,
  required void Function(String text) onChanged,
}) {
  final t = useTextEditingController(text: text);
  useEffect(
    () {
      final listener = () => onChanged(t.text);
      t.addListener(listener);
      return () => t.removeListener(listener);
    },
    [],
  );
  return t;
}
