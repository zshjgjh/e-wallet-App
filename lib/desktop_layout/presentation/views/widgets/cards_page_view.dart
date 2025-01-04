import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/data/my_card_model.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/my_card.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({
    super.key,
    required this.pageController,

  });

  final PageController pageController;
  final MyCardModel myCardModel=const MyCardModel(
      name: 'Zuhor Saeed',
      image: 'asset/images/photo_2024-12-17_05-34-00.jpg',
      num: '087699 64008036676',
      date: '12/20 -124');

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) =>  MyCard(myCardModel: myCardModel,)));
  }
}