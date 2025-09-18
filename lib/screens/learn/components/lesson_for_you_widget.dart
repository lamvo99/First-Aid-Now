import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/screens/learn/cubit/learn_cubit.dart';
import 'package:flutter/material.dart';

class LessonForYouWidget extends StatelessWidget {
  final LearnState state;

  const LessonForYouWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return TitleComponentWidget(
      title: i18n.Learn.ForYou,
      child: Column(),
    );
  }
}
