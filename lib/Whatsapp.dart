import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/whatsapp_view.dart';

class whatsapp extends StatefulWidget {
  const whatsapp({super.key});

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  var selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (val) {
          selectedIndex = val;
          setState(() {});
        },
        children: [
          ChatScreen(),
          Updates(),
          Call(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (val) {
          selectedIndex = val;

          //  pageController.animateTo(val, duration: 500, curve: Curves.easeIn),
          pageController.animateToPage(val,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);

          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_sharp,
              ),
              label: "Chats"),
          BottomNavigationBarItem(
              icon: Icon(Icons.facebook_rounded), label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),
    );
  }
}
