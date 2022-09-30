import 'package:flutter/material.dart';
import 'package:practice/home_page.dart';
import 'package:practice/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentpage = 0;
  List<Widget> pages = const [HomePage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    // final wordPair = DateTime.now();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Wordpair generator'),
        ),
        body: pages[currentpage],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentpage = index;
            });
          },
          selectedIndex: currentpage,
        ),
      ),
    );
  }
}
