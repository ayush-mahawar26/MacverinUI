import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macverin_ui/models/postmodel.dart';
import 'package:macverin_ui/widgets/comment.dart';
import 'package:macverin_ui/widgets/tiles.dart';

import 'constants/colors.dart';
import 'constants/size.config.dart';

class PostDetail extends StatelessWidget {
  PostModel model;
  PostDetail({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: SvgPicture.asset("assets/icons/home.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: SvgPicture.asset("assets/icons/idea.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: SvgPicture.asset("assets/icons/post.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: SvgPicture.asset("assets/icons/noti.svg"),
            label: '',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: SvgPicture.asset("assets/icons/profile.svg"),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/back.svg",
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/search.svg"),
                        const SizedBox(
                          width: 20,
                        ),
                        SvgPicture.asset("assets/icons/message.svg")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
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
                                      model.username!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      model.time!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 15, color: Colors.grey),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                TextTile(text: model.category!),
                                SvgPicture.asset("assets/icons/dots.svg")
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Food waste or food loss refers to uneaten or discarded food.",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Some avenues that can be explored are educating farmers on good storage practices, recycling and composting, providing transportation and storage facilities, re-distributing leftover food from parties and events, and setting up compost plants and food waste management platforms.",
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Icon(Icons.pause),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: SvgPicture.asset(
                              "assets/icons/audio.svg",
                              width: SizeConfig.screenWidth,
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: borderColor),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          bottomLeft: Radius.circular(15))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text(
                                      "Vote",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(color: Colors.green),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: borderColor),
                                      borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(15),
                                          bottomRight: Radius.circular(15))),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    child: Text(
                                      "Hate",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(color: Colors.red),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "${model.voted} Voted",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(color: Colors.grey),
                                )
                              ],
                            ),
                            SvgPicture.asset(
                              "assets/icons/comment.svg",
                              width: 35,
                              height: 35,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: SizeConfig.screenWidth,
                  height: 1,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 10,
                ),
                Commentblock(
                  name: "Sufana",
                  like: "4",
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Commentblock(
                      name: "Robert",
                      like: "0",
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: SizeConfig.screenWidth,
                  height: 1,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 20,
                ),
                Commentblock(
                  name: "Alen Maxwell",
                  like: "0",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
