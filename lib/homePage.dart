import 'package:eric_dearing/myAppsSection.dart';
import 'package:flutter/material.dart';
import "homeSection.dart";
import "resumePage.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    GlobalKey homePageKey = GlobalKey();
    GlobalKey myAppsPageKey = GlobalKey();
    GlobalKey contactKey = GlobalKey();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: pageButton("Home", homePageKey, context),
        actions: [
          pageButton("My Apps", myAppsPageKey, context),
          pageButton("Contact", contactKey, context),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, "/resume");
            },
            child: const Text(
              "Resume",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              key: homePageKey,
              color: Colors.black87,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: const HomeSection(),
            ),
            Container(
              key: myAppsPageKey,
              color: Colors.black87,
              height: (MediaQuery.of(context).size.height - kToolbarHeight) * 2,
              child: const Center(
                child: MyAppsSection(),
              ),
            ),
            Container(
              key: contactKey,
              color: Colors.black87,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: const Center(
                child: Text("Hello"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextButton pageButton(String name, GlobalKey key, context) {
  return TextButton(
    onPressed: () {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: Durations.long1,
      );
    },
    child: Text(
      name,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
