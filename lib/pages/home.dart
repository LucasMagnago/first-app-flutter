import 'package:first_app_flutter/pages/dados_cadastrais.dart';
import 'package:first_app_flutter/pages/card.dart';
import 'package:first_app_flutter/pages/image_assets.dart';
import 'package:first_app_flutter/pages/list_view_horizontal.dart';
import 'package:first_app_flutter/pages/list_view_vertical.dart';
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
                  CardPage(),
                  ImageAssetsPage(),
                  ListViewVerticalPage(),
                  ListViewHorizontalPage(),
                ],
              ),
            ),
            BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
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
                  label: 'Page 2',
                  icon: Icon(Icons.help_center_outlined),
                ),
                BottomNavigationBarItem(
                  label: 'Page 3',
                  icon: Icon(Icons.access_time_outlined),
                ),
                BottomNavigationBarItem(
                  label: 'Page 4',
                  icon: Icon(Icons.smart_toy),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
