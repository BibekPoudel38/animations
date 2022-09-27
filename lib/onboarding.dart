import 'dart:developer';

import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // late Timer timer;
  @override
  void initState() {
    super.initState();
    //   timer = Timer.periodic(const Duration(seconds: 2), (timer) {
    //     _controller.nextPage(
    //       duration: const Duration(milliseconds: 100),
    //       curve: Curves.ease,
    //     );
    //     log(_controller.page.toString());
    //     if (_controller.page == 2) {
    //       timer.cancel();
    //     }
    //     log("message");
    //   });

    // _scrollController.addListener(() {
    //   log(_scrollController.position.toString());
    // });
    scrollController = ScrollController();

    log("Has client");
    try {
      scrollController.addListener(() {
        log(scrollController.position.pixels.toString());
      });
      scrollController.position.addListener(() {
        log(scrollController.position.pixels.toString());
      });
    } catch (e) {}
  }

  final pages = [
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.blue,
    ),
  ];

  final PageController controller = PageController();
  late ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          TextButton(
            onPressed: () {
              controller.previousPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            },
            child: const Text("Previous"),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {
              controller.nextPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.ease,
              );
            },
            child: const Text("Next"),
          ),
        ],
      ),
      // body: Builder(
      //   builder: (context) => PageView(
      //     physics: const NeverScrollableScrollPhysics(),
      //     controller: _controller,
      //     children: pages,
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_upward_rounded),
        onPressed: () {
          // _scrollController.jumpTo(0);
          scrollController.animateTo(
            0,
            duration: const Duration(seconds: 3),
            curve: Curves.ease,
          );
        },
      ),
      body: ListView.builder(
        shrinkWrap: true,
        controller: scrollController,
        itemBuilder: (c, i) {
          return ListTile(
            title: Text("Index is \$ $i"),
          );
        },
      ),
    );
  }
}
