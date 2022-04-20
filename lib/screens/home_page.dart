import 'package:dummy_list_tile/screens/home.dart';
import 'package:dummy_list_tile/screens/people.dart';
import 'package:dummy_list_tile/screens/print.dart';
import 'package:dummy_list_tile/screens/search.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            activeColor: CupertinoColors.activeGreen,
            onTap: (index) {},
            iconSize: 18,
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(CupertinoIcons.home),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: Icon(CupertinoIcons.search),
              ),
              BottomNavigationBarItem(
                label: 'Print',
                icon: Icon(CupertinoIcons.printer),
              ),
              BottomNavigationBarItem(
                label: 'People',
                icon: Icon(CupertinoIcons.group),
              ),
            ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) => const Home());
            case 1:
              return CupertinoTabView(builder: (context) => const Search());
            case 2:
              return CupertinoTabView(builder: (context) => const Print());
            case 3:
            default:
              return CupertinoTabView(builder: (context) => const People());
          }
        });
  }
}
