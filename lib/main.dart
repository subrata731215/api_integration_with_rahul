import 'package:api_intregration_with_rahul/screens/user_list_screen/user_list_screen.dart';
import 'package:api_intregration_with_rahul/screens/user_map_screen/user_map_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Screens.userListScreen,
    );
  }
}

class Screens {
  static Widget userMapScreen = const UserMapScreen();
  static Widget userListScreen = const UserListScreen();
}
