import 'package:flutter/material.dart';


import '../../../../core/utilis/app_images.dart';
import '../../../../core/utilis/styles.dart';
import '../../../data/models/name_model.dart';

class NameListTile extends StatelessWidget {
  const NameListTile({
    super.key,
    required this.nameModel,

  });

  final NameModel nameModel;


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        title:   FittedBox(
          alignment: Alignment.topLeft,
          fit: BoxFit.scaleDown,
          child: Text(nameModel.name,
            style: Styles.semiBold16(context),
            maxLines: 1,),
        ),

        leading: Image.asset(nameModel.avatar,),

        subtitle: FittedBox(
          alignment: Alignment.topLeft,
          fit: BoxFit.scaleDown,
          child: Text(nameModel.email,
            style: Styles.regular12(context),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}