import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macverin_ui/constants/size.config.dart';
import 'package:macverin_ui/widgets/tiles.dart';

class Commentblock extends StatelessWidget {
  String name;
  String like;
  Commentblock({super.key, required this.name, required this.like});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/profile.svg",
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "10min",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: SizeConfig.screenWidth * 0.8,
              child: Text(
                "Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et.",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                (like != "0")
                    ? Text(
                        "4",
                        style:
                            Theme.of(context).textTheme.bodySmall!.copyWith(),
                      )
                    : Text(""),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  CupertinoIcons.reply,
                  color: Colors.white,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
