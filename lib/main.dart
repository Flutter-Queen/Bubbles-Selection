import 'package:flutter/material.dart';
import 'package:playstore_ui/statemanagement/state_helper.dart';
import 'package:provider/provider.dart';

import 'bubble_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AppState(),
        child: const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: BubbleScreen()));
  }
}
