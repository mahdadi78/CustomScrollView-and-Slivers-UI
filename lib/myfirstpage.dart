import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  const MyFirstPage({super.key});

  @override
  State<MyFirstPage> createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            flexibleSpace: flexibleSpaceContainer(),
            expandedHeight: 220,
            backgroundColor: Colors.white,
          ),
          sliverlist()
        ],
      ),
    );
  }

  Expanded flexibleSpaceContainer() {
    return Expanded(
      child: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appbar(),
            startingQuestion(),
            avatars(),
          ],
        ),
      ]),
    );
  }

  SliverList sliverlist() {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: 1,
      (context, index) {
        return Column(
          children: [
            radiusContainerMaker(const Color(0xff1c2d27), 200),
            radiusContainerMaker(Colors.white, 1800),
          ],
        );
      },
    ));
  }

  Container radiusContainerMaker(Color color, double height) {
    return Container(
      width: double.maxFinite,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
    );
  }

  Padding avatars() {
    return const Padding(
      padding: EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 25,
          ),
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 25,
          ),
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 25,
          ),
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: 25,
          ),
        ],
      ),
    );
  }

  Padding startingQuestion() {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        'how do you feel today?',
        style: TextStyle(fontSize: 23, color: Colors.black),
      ),
    );
  }

  Padding appbar() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //profile image
          profileimageANDname(),
          //action icon
          const Icon(
            Icons.bubble_chart_outlined,
            color: Colors.black54,
          )
        ],
      ),
    );
  }

  Row profileimageANDname() {
    return Row(
      children: [
        Container(
          width: 40,
          height: 40,
          color: Colors.grey,
        ),
        const SizedBox(width: 10),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'mahdi haddadi',
              style: TextStyle(color: Colors.black38),
            ),
            Text(
              'flutter coders',
              style: TextStyle(color: Colors.black38, fontSize: 10),
            ),
          ],
        ),
      ],
    );
  }
}
