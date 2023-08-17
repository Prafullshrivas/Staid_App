import 'package:flutter/material.dart';
import 'package:staid/loginscreens/editprofilepage.dart';
import 'package:staid/navigationScreen/postedTask.dart';

import 'package:staid/navigationScreen/profilescreen.dart';

import 'chatsclass.dart';
import 'homescreen.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;

  static List<Widget> _bodyView = <Widget>[
    homeScreen(),
    postedTask(),
    chaticon(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
  }

  Widget _tabItem(Widget child, String label, {bool isSelected = false}) {
    return AnimatedContainer(
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        duration:   Duration(milliseconds: 500),
        decoration: !isSelected
            ? null
            : BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white38,
              ),
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            child,
            Text(label, style: TextStyle(fontSize: 8)),
          ],
        ));
  }

  final List<String> _labels = ['Home', 'post', 'chats', 'profile'];

  @override
  Widget build(BuildContext context) {
    List<Widget> _icons = const [
      Icon(Icons.home_outlined,color: Colors.white),
      Icon(Icons.list_alt_outlined,color: Colors.white),
      Icon(Icons.chat_outlined,color: Colors.white),
      Icon(Icons.person_outline,color: Colors.white),
    ];

    return Scaffold(
      body: Center(
        child: _bodyView.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.all(12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50.0),
          child: Container(
            color: Color(0xff254D71).withOpacity(1),
            child: TabBar(
                onTap: (x) {
                  setState(() {
                    _selectedIndex = x;
                  });
                },
                labelColor: Colors.black,
                unselectedLabelColor: Colors.blueGrey,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide.none,
                ),
                tabs: [
                  for (int i = 0; i < _icons.length; i++)
                    _tabItem(
                      _icons[i],
                      _labels[i],
                      isSelected: i == _selectedIndex,
                    ),
                ],
                controller: _tabController),
          ),
        ),
      ),
    );
  }
}

// class Navigations extends StatefulWidget {
//   const Navigations({super.key});
//
//   @override
//   State<Navigations> createState() => _NavigationsState();
// }
//
// class _NavigationsState extends State<Navigations> {
//   int _selectedIndex = 0;
//
//   static  final List<Widget> _widgetOptions = <Widget>[
//      homeScreen(),
//      postedTask(),
//      chaticon(),
//      ProfileScreen()
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home, color: Color(0xff254D71)),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.view_list_rounded, color: Color(0xff254D71)),
//             label: 'posts',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.chat, color: Color(0xff254D71)),
//             label: 'Chats',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle, color: Color(0xff254D71)),
//             label: 'profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.blueAccent[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
