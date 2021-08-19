import 'package:flutter/material.dart';
import 'package:gtb_clone/icon_item.dart';

import 'icons.dart';

class IconGrid extends StatelessWidget {
  final List<IconItem> icons;
  IconGrid(this.icons);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => IconsWidget(icons[i].icon, icons[i].title),
      itemCount: icons.length,
    );
  }
}
