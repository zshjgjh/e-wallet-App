import 'package:flutter/material.dart';
import 'package:uipractice/drawer/models/name_model.dart';

import '../../../core/utilis/app_images.dart';
import '../../../core/utilis/styles.dart';

class NameListTile extends StatelessWidget {
  const NameListTile({
    super.key,
    required this.nameModel,

  });

  final NameModel nameModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  FittedBox(
          alignment: Alignment.centerLeft,
          fit: BoxFit.scaleDown,
          child: Text(nameModel.name, style: Styles.semiBold16)),
      leading: Image.asset(nameModel.avatar),
      subtitle:  FittedBox(
        alignment: Alignment.centerLeft,
        fit: BoxFit.scaleDown,
        child: Text(nameModel.email,
          style: Styles.regular12,
        ),
      ),
    );
  }
}