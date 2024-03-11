import 'package:flutter/material.dart';

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
        title: pageButton("Home", homePageKey, context),
        actions: [
          pageButton("My Apps", myAppsPageKey, context),
          pageButton("Contact", contactKey, context),
          //pageButton("Resume"),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              key: homePageKey,
              color: Colors.yellow,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Scrollable.ensureVisible(
                      myAppsPageKey.currentContext!,
                      duration: Durations.long1,
                    );
                  },
                  child: const Text("Scroll down"),
                ),
              ),
            ),
            Container(
              key: myAppsPageKey,
              color: Colors.green,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: Center(
                child: Text("Hello"),
              ),
            ),
            Container(
              key: contactKey,
              color: Colors.green,
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              child: Center(
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
    child: Text(name),
  );
}
