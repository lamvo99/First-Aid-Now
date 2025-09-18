import 'package:first_aid/data/category/category_data.dart';
import 'package:first_aid/generated/strings.g.dart';
import 'package:first_aid/screens/home/components/title_component_widget.dart';
import 'package:first_aid/screens/home/cubit/home_cubit.dart';
import 'package:first_aid/screens/learn/components/category_item.dart';
import 'package:first_aid/screens/learn/cubit/learn_cubit.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final LearnState state;

  const CategoryWidget({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return TitleComponentWidget(
      title: i18n.Learn.Category,
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            shrinkWrap: true,
            crossAxisSpacing: 12,
            childAspectRatio: 0.8,
            children: [
              ...learnCategories.map((cate) {
                return CategoryItem(category: cate);
              }).toList()
            ],
          )
        ],
      ),
    );
  }
}
