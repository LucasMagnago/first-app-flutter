import 'package:first_app_flutter/shared/app_images.dart';
import 'package:flutter/material.dart';

class ListViewHorizontalPage extends StatefulWidget {
  const ListViewHorizontalPage({Key? key}) : super(key: key);

  @override
  State<ListViewHorizontalPage> createState() => _ListViewHorizontalPage();
}

class _ListViewHorizontalPage extends State<ListViewHorizontalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  elevation: 8,
                  child: Image.asset(
                    AppImages.landscape1,
                    height: 100,
                  ),
                ),
                Card(
                  elevation: 8,
                  child: Image.asset(
                    AppImages.landscape2,
                    height: 100,
                  ),
                ),
                Card(
                  elevation: 8,
                  child: Image.asset(
                    AppImages.landscape3,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
