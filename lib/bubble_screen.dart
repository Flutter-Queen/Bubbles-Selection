import 'package:bubbles_selection/bubbles_selection.dart';
import 'package:flutter/material.dart';

class BubbleScreen extends StatefulWidget {
  const BubbleScreen({Key? key}) : super(key: key);

  @override
  State<BubbleScreen> createState() => _BubbleScreenState();
}

class _BubbleScreenState extends State<BubbleScreen> {
  List<Bubble> selectedBubbles = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          const Text(
            "Select your Favourite Prog-Language",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 32, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          BubbleSelection(
            // backgroundColor: Colors.black,
            bubbles: [
              Bubble(
                  text: "Flutter",
                  activeColor: const Color(0xFF25316D),
                  inactiveColor: Colors.blue.withOpacity(0.5),
                  textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Bubble(
                text: "Python",
                activeColor: Colors.red.withOpacity(0.5),
                inactiveColor: Colors.yellow,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Bubble(
                  text: "JavaScript",
                  activeColor: const Color(0xFFE38B29),
                  inactiveColor: const Color(0xFFF7A76C),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                  scale: 0.8),
              Bubble(
                text: "Java",
                activeColor: const Color(0xFFF2B600),
                inactiveColor: Colors.red,
                textStyle:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              Bubble(
                text: "C++",
                activeColor: Colors.pink,
                inactiveColor: Colors.pink.shade100,
                textStyle:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Bubble(
                text: "GoLang",
                activeColor: Colors.cyan,
                inactiveColor: Colors.teal,
                textStyle:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                scale: 1,
              ),
              Bubble(
                text: "Swift",
                activeColor: Colors.purple,
                inactiveColor: Colors.blueGrey,
                textStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
            selectedBubbles: selectedBubbles,
            size: const Size(
              900,
              300,
            ),
            onSelect: (bubble) {
              setState(() {
                selectedBubbles.add(bubble);
              });
            },
            onRemoved: (bubble) {
              setState(() {
                selectedBubbles.remove(bubble);
              });
            },
          ),
          const Spacer(),
          Wrap(
            children: selectedBubbles
                .map<Widget>(
                  (bubble) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(
                        bubble.text,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
