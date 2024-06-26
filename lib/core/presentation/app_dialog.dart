import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
    required this.children,
    required this.isLong,
    required this.spaceAround,
  }) : super(key: key);

  final List<Widget> children;
  final bool spaceAround;
  final bool isLong;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: isLong ? size.height / 4 : size.height / 3,
        horizontal: size.width / 20,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            mainAxisAlignment: spaceAround
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.center,
            children: children,
          ),
        ),
      ),
    );
  }
}
