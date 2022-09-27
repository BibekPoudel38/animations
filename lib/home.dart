import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepagecontroller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> images = [
    'assets/apple.png',
    'assets/google.webp',
    'assets/meta.jpeg',
  ];

  double height = 100;
  double width = 100;
  double opacity = 1;
  double radius = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return GridView.builder(
            itemCount: controller.seats.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 12,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.selectSeat(index);
                },
                child: Container(
                  margin: const EdgeInsets.all(2),
                  color: controller.getColor(
                    controller.seats[index],
                  ),
                ),
              );
            },
          );
        },
      ),
      // body: ListView(
      //   children: [
      //     const ListTile(
      //       title: Text("Hello world"),
      //     ),
      //     SwitchListTile(
      //       title: const Text("Switch List"),
      //       value: false,
      //       onChanged: (v) {},
      //     ),
      //     CheckboxListTile(
      //       title: const Text("Checkbox List"),
      //       value: false,
      //       onChanged: (v) {},
      //     ),
      //     RadioListTile(
      //       title: const Text("Radio List"),
      //       value: "apple",
      //       groupValue: "apple",
      //       onChanged: (v) {},
      //     ),
      //     ExpansionTile(
      //       title: const Text(
      //         "Expansion",
      //       ),
      //       children: [
      //         SelectableText("Hello i am a student at some college" * 10),
      //       ],
      //     ),
      //     // Row(
      //     //   mainAxisAlignment: MainAxisAlignment.center,
      //     //   children: [
      //     //     const Text("Don't have an account?"),
      //     //     TextButton(
      //     //       child: const Text("Signup"),
      //     //       onPressed: () {},
      //     //     ),
      //     //   ],
      //     // ),
      //     RichText(
      //       text: const TextSpan(
      //         style: TextStyle(
      //           color: Colors.black,
      //           fontSize: 50,
      //         ),
      //         children: [
      //           TextSpan(
      //             text: "Hello ",
      //             style: TextStyle(
      //               fontWeight: FontWeight.w200,
      //             ),
      //           ),
      //           TextSpan(
      //             text: "Nepal",
      //             style: TextStyle(
      //               color: Colors.red,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //     Slider(
      //       value: 10,
      //       max: 150,
      //       onChanged: (v) {
      //         log(v.toString());
      //       },
      //     ),
      //   ],
      // ),
      // body: Column(
      //   children: [
      //     IconButton(
      //       onPressed: () {
      //         setState(() {
      //           height = 250;
      //           width = 250;
      //         });
      //       },
      //       icon: const Icon(
      //         Icons.add,
      //       ),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         height = 100;
      //         width = 100;
      //         setState(() {});
      //       },
      //       icon: const Icon(
      //         Icons.remove,
      //       ),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         opacity = opacity == 0 ? 1 : 0;
      //         setState(() {});
      //       },
      //       icon: const Icon(
      //         Icons.visibility_rounded,
      //       ),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         radius = radius == 0 ? 360 : 0;
      //         setState(() {});
      //       },
      //       icon: const Icon(
      //         Icons.check,
      //       ),
      //     ),
      //     AnimatedOpacity(
      //       opacity: opacity,
      //       duration: const Duration(seconds: 1),
      //       child: Container(
      //         height: height,
      //         width: width,
      //         color: Colors.red,
      //       ),
      //     ),
      //     AnimatedContainer(
      //       duration: const Duration(seconds: 1),
      //       height: height,
      //       width: width,
      //       decoration: BoxDecoration(
      //         color: Colors.orange,
      //         borderRadius: BorderRadius.circular(
      //           radius,
      //         ),
      //       ),
      //       child: Container(),
      //     ),
      //   ],
      // ),
      // body: ListView.builder(
      //   itemCount: images.length,
      //   itemBuilder: (context, index) {
      //     return GestureDetector(
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => DetailsPage(
      //               image: images[index],
      //             ),
      //           ),
      //         );
      //       },
      //       child: Card(
      //         child: Center(
      //           child: Hero(
      //             tag: images[index],
      //             child: Material(
      //               type: MaterialType.transparency,
      //               child: Text(
      //                 images[index],
      //                 style: const TextStyle(fontSize: 45),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
