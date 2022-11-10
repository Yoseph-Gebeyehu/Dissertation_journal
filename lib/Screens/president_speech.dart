import 'package:flutter/material.dart';
import 'package:gallery/Screens/top_row.dart';

class PresidentSpeechScreen extends StatelessWidget {
  const PresidentSpeechScreen({Key? key}) : super(key: key);
  static const routeName = '/president-speech';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          snap: true,
          backgroundColor: Colors.black38,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'Assets/Images/president.jpg',
              fit: BoxFit.cover,
            ),
            title: const Text('Dr Esubalew Genetu'),
            // collapseMode: CollapseMode.pin,
            centerTitle: true,
          ),
          floating: true,
          // pinned: true,

          expandedHeight: MediaQuery.of(context).size.height * 0.6,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(TopRow.routeName);
            },
          ),
        ),
        text(),
      ]),
    );
  }

  Widget text() => const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(top: 10, bottom: 35),
          child: Text(
            'Peace for all of you dear students. I wanna start my message by saying you congratulation!!! Today is a greate day for you. You acheived your 4 or 5 year learning program!! I hope that you get a lot of skills during your campus learning. So the time is now to use your skills and solve society problem. As you know success never comes from comfort zone. So you should do anything althogh it is not comfortable. You should not forget your aim. Since you have a poor country you are expected to make it rich. May God be with you. I wish all best things. ',
            style: TextStyle(fontSize: 23),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
