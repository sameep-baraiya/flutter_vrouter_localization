import 'package:flutter/material.dart';
import 'package:vrouter/vrouter.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        context.vRouter.push('/');
        break;
      case 1:
        context.vRouter.push('/play');
        break;
      case 2:
        context.vRouter.push('/chat');
        break;
      case 3:
        context.vRouter.push('/notification');
        break;
      case 4:
        context.vRouter.push('/more');
        break;
      default:
        context.vRouter.push('/');
    }
  }

  int _getSelectedIndex() {
    if (context.vRouter.url == '/') {
      return 0;
    } else if (context.vRouter.url!.contains('play')) {
      return 1;
    } else if (context.vRouter.url!.contains('chat')) {
      return 2;
    } else if (context.vRouter.url!.contains('notification')) {
      return 3;
    } else if (context.vRouter.url!.contains('more')) {
      return 4;
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Feeds'),
        BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports), label: 'Play'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notification'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
      ],
      currentIndex: _getSelectedIndex(),
      onTap: _onItemTapped,
    );
  }
}
