import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uipractice/core/utilis/size_config.dart';

import 'package:uipractice/tablet_layout/data/models/expenses_model.dart';

import '../../../../core/utilis/styles.dart';
import 'expenses_container_item_header.dart';

class ExpensesContainer extends StatelessWidget {
  const ExpensesContainer({
    super.key,
    required this.expensesModel,
    required this.index,
    required this.isActive,
  });
  final ExpensesModel expensesModel;
  final int index;
  final bool isActive;

  @override
  Widget build(BuildContext context) {

    return AspectRatio(

      aspectRatio:getAspectRatio(context),
      
      child: Flexible(
        child: Container(
                decoration: BoxDecoration(
                    color: isActive ? const Color(0xFF4EB7F2) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: const Color(0xFFAAAAAA), width: 1)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 36.0, right: 20, left: 20, bottom: 16),
        
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ExpensesContainerItemHeader(
                        expensesModel: expensesModel,
                        isActive: isActive ,
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Text(
                        expensesModel.title,
                        style: isActive
                            ? Styles.semiBold16(context).copyWith(color: Colors.white)
                            : Styles.semiBold16(context),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        expensesModel.date,
                        style: isActive
                            ? Styles.regular14(context).copyWith(color: Colors.white)
                            : Styles.regular14(context),
                      ),
                      const Expanded(
                        child: SizedBox(
                          height: 16,
                        ),
                      ),
                      Text(
                        expensesModel.money,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: isActive
                            ? Styles.semiBold24(context).copyWith(color: Colors.white)
                            : Styles.semiBold24(context),
                      ),
        
                    ],
                  ),
                ),
              ),
      ),
    );
  }

}
double getAspectRatio(context){
  double width=MediaQuery.of(context).size.width;
  if(width>=1200&& width<=1250){
    return 4/6;
  }else if(width>SizeConfig.mobileBP && width<=950 ){
    return 4/7.5;
  }else if(width>=500&& width<=SizeConfig.mobileBP ){
    return 10/5;
  }else if(width<500 ){
    return 7/4.5;
  } else {
    return 4/5; //> 1300
  }
}