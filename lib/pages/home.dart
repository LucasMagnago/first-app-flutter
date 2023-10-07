import 'package:first_app_flutter/pages/dados_cadastrais.dart';
import 'package:first_app_flutter/pages/page1.dart';
import 'package:first_app_flutter/pages/page2.dart';
import 'package:first_app_flutter/pages/page3.dart';
import 'package:first_app_flutter/shared/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController(initialPage: 0);
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const CustomDrawer(),
        body: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (position) => {
                  setState(() {
                    this.position = position;
                  }),
                },
                children: const [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ),
            ),
            BottomNavigationBar(
              currentIndex: position,
              onTap: (value) => {
                pageController.jumpToPage(value),
                position = value,
              },
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.help_center_outlined),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
