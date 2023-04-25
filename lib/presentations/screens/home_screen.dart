import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/presentations/pages/business_page.dart';
import 'package:flutter_provider_counter/presentations/pages/home_page.dart';
import 'package:flutter_provider_counter/presentations/pages/setting_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selesctIndex = 0;
  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const BusinessPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Flutter Provider Yayo')),
      ),
      body: _pages[_selesctIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selesctIndex,
          onTap: (value) {
            setState(() {
              _selesctIndex = value;
            });
          },
          // type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page 1'),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: 'Page 2'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Page 3'),
          ]),
    );
  }
}
