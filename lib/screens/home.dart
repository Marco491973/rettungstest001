import 'package:dummy_list_tile/screens/item_detail_page.dart';
import 'package:flutter/material.dart';

class User {
  final int id;
  final IconData icon;
  final String title;
  User({required this.id, required this.icon, required this.title});
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<User> user = [
    User(id: 1, icon: Icons.person, title: 'Willma Randa'),
    User(id: 2, icon: Icons.person, title: 'Tom Bola'),
    User(id: 3, icon: Icons.person, title: 'Timo Beil'),
    User(id: 4, icon: Icons.person, title: 'Anna Theke'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: const [
                  Text(
                    'User',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              child: Center(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: user.length,
                      itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ItemDetailPage(user: user[index]);
                            }));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 5,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.4,
                              height: 40,
                              child: Card(
                                child: ListTile(
                                    leading: Icon(user[index].icon),
                                    title: Text(user[index].title)),
                              ),
                            ),
                          )))),
            ),
          ],
        ));
  }
}
