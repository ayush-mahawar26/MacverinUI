import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:macverin_ui/constants/colors.dart';

import '../constants/size.config.dart';

class TextTile extends StatelessWidget {
  String text;
  TextTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          width: SizeConfig.screenWidth * 0.26,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: lightBlack,
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(50)),
          child: Center(
            child: Text(
              text,
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 15),
            ),
          ),
        ));
  }
}
