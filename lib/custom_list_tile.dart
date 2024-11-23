import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.title, required this.leading,
  });

  final Widget title;
  final Icon leading;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
          child: title),
    );
  }
}