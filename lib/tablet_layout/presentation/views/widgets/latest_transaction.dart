import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utilis/app_images.dart';
import '../../../core/utilis/styles.dart';
import '../../../drawer/data/models/name_model.dart';
import '../../../drawer/presentation/views/widgets/name_list_tile.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  final List<NameModel> names = const [
    NameModel(name: 'Mariam Watson',
        email: 'wfgdgf,jhikhk.m@gmail.com',
        avatar: AppImages.logo),
    NameModel(name: 'Madrani Andi',
        email: 'm356@yahoo.com',
        avatar: AppImages.logo),
    NameModel(name: 'Jasoua Nanito',
        email: 'jn@gmail.com',
        avatar: AppImages.logo),
    NameModel(name: 'Jasoua Nanito',
        email: 'jn@gmail.com',
        avatar: AppImages.logo),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.topLeft,
            child: Text('Latest Transaction', style: Styles.medium16,)),
        const SizedBox(height: 20,),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: names.length,
              itemBuilder: (context, index) {
                return IntrinsicWidth(
                    child: NameListTile(nameModel: names[index],));
              }),
        ),
      ],
    );
  }
}