import 'package:bt_c3/body.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode
          ? ThemeData.dark()
          : ThemeData.light().copyWith(
              appBarTheme: const AppBarTheme(
                color: Colors.white,
              ),
            ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: buildAppBar(),
        body: const MyBody(),
      ),
    );
  }

  PreferredSizeWidget buildAppBar() {
    Color appBarItemColor = isDarkMode ? Colors.white : Colors.black;

    return AppBar(
      leading: Icon(
        Icons.arrow_back,
        color: appBarItemColor,
      ),
      title: Text(
        "Salad",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: appBarItemColor,
        ),
      ),
      actions: [
        InkWell(
          onTap: () {
            setState(() {
              isDarkMode = !isDarkMode;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.search,
              color: appBarItemColor,
            ),
          ),
        )
      ],
      elevation: 0,
    );
  }
}


