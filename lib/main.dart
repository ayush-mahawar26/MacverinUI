import 'package:flutter/material.dart';
import 'package:macverin_ui/constants/colors.dart';
import 'package:macverin_ui/constants/size.config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:macverin_ui/models/postmodel.dart';
import 'package:macverin_ui/widgets/post.dart';
import 'package:macverin_ui/widgets/tiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: ColorFunction().getMaterialColor(black),
          textTheme: const TextTheme(
              bodySmall: TextStyle(color: Colors.white, fontSize: 15),
              bodyMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              bodyLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold))),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> tiletext = ["Art", "Fashion", "Tech", "Legal"];

  PostModel model = PostModel(
      username: "John Doe",
      time: "10min ago",
      category: "Health",
      voted: "10k");

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "IDUTE",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontWeight: FontWeight.w400),
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
                // Expanded(
                //   child: ListView.builder(
                //       scrollDirection: Axis.horizontal,
                //       itemCount: tiletext.length,
                //       itemBuilder: (context, index) {
                //         return TextTile(text: tiletext[index]);
                //       }),
                // )
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TextTile(text: "Art"),
                      TextTile(text: "Fashion"),
                      TextTile(text: "Tech"),
                      TextTile(text: "Legal"),
                    ],
                  ),
                ),
                Column(
                  children: [
                    PostCard(
                      haveAudio: true,
                      model: model,
                    ),
                    PostCard(
                      haveAudio: false,
                      model: model,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
