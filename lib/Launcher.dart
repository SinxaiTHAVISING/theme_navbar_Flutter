import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Screen/home.dart';
import 'Screen/contact.dart';
import 'Screen/profile.dart';
import 'Screen/about.dart';
import 'Screen/setting.dart';
  
class Launcher extends StatefulWidget {
    static const routeName = '/';
 
    const Launcher({Key? key}) : super(key: key);
  
    @override
    State<StatefulWidget> createState() {
        return _LauncherState();
    }
}
  
class _LauncherState extends State<Launcher> {
    int _selectedIndex = 0;
    final List<Widget> _pageWidget = <Widget>[
        const Home(),
        const About(),
        const Profile(),
        const Contact(),
        const Settings(),
    ];
    final List<BottomNavigationBarItem> _menuBar
    =  <BottomNavigationBarItem>[
        const  BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.shop),
            label: 'ຮ້ານຄ້າ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartShopping),
            label: 'ກະຕ່າສິນຄ້າ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.truckFast),
            label: 'ຂົນສົ່ງ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userGroup),
            label: 'ສະມາຊິກ',
        ),
        const BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cog),
            label: 'ຕັ້ງຄ່າ',
        ),
    ];
  
    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
    }
  
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _pageWidget.elementAt(_selectedIndex),
            bottomNavigationBar: BottomNavigationBar(
                items: _menuBar,
                currentIndex: _selectedIndex,
                selectedItemColor: Theme
                    .of(context)
                    .primaryColor,
                unselectedItemColor: Colors.grey,
                onTap: _onItemTapped,
            ),
        );
    }
}