import 'package:flutter/material.dart';
import 'package:wells_fargo_clone/pages/deposit.dart';
import 'package:wells_fargo_clone/pages/explore.dart';
import 'package:wells_fargo_clone/pages/home_page.dart';
import 'package:wells_fargo_clone/pages/menu.dart';
import 'package:wells_fargo_clone/pages/pay_and_transfer.dart';

class Master extends StatefulWidget {
  const Master({super.key});

  @override
  State<Master> createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int index = 0;
  final screens = [
    const HomePage(),
    const Deposit(),
    const PayAndTransfer(),
    const Explore(),
    const Menu(),
  ];
  final items = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      label: 'Account',
      icon: Icon(Icons.home),
    ),
    const BottomNavigationBarItem(
      label: 'Deposit',
      icon: Icon(Icons.payment_outlined),
    ),
    const BottomNavigationBarItem(
      label: 'Pay & Transfer',
      icon: Icon(Icons.paid_outlined),
    ),
    const BottomNavigationBarItem(
      label: 'Explore',
      icon: Icon(Icons.explore_outlined),
    ),
    const BottomNavigationBarItem(
      label: 'Menu',
      icon: Icon(Icons.menu_outlined),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        selectedItemColor: Colors.red,
        currentIndex: index,
        selectedIconTheme: const IconThemeData(color: Colors.red),
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: items,
      ),
      body: screens[index],
    );
  }
}
