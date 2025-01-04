import 'package:flutter/material.dart';
import 'package:uipractice/desktop_layout/presentation/views/widgets/cards_page_view.dart';
import '../../../../core/utilis/styles.dart';
import 'dot_indicator.dart';


class MyCardSection extends StatefulWidget {

  const MyCardSection({
    super.key,
  });

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {

  late  PageController pageController;
  int currentIndex=0;

  @override
  void initState(){
    super.initState();
    pageController=PageController();
    pageController.addListener((){
      currentIndex=pageController.page!.round();
      setState(() {

      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         Row(
          children: [
            Text('My Cards',style: Styles.semiBold20(context),),
          ],
        ),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CardsPageView(pageController: pageController,),
              const SizedBox(height: 20,),
              DotIndicator(currentIndex: currentIndex,),
            ],
          ),
        )


      ],
    );
  }
}