import 'package:flutter/material.dart';
import 'package:fixitnow/screens/home/home.dart';
import 'package:fixitnow/screens/message/message.dart';
import 'package:fixitnow/screens/activity/activity.dart';
import 'package:fixitnow/screens/account/account.dart';
import 'package:fixitnow/screens/widgets/styles.dart';

class MainNavigationBar extends StatefulWidget {
  const MainNavigationBar({super.key});

  @override
  State<MainNavigationBar> createState() => _MainNavigationBarState();
}

class _MainNavigationBarState extends State<MainNavigationBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(key: ValueKey('HomePage')),
    const MessagePage(key: ValueKey('MessagePage')),
    const ActivityPage(key: ValueKey('ActivityPage')),
    const AccountPage(key: ValueKey('AccountPage')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Brightness currentBrightness = Theme.of(context).brightness;

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.my_library_books_sharp), label: 'Activity'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: TextStyles.primaryColor,
        unselectedItemColor: currentBrightness == Brightness.dark ? Colors.white : Colors.black,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
