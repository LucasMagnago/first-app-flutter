import 'package:first_app_flutter/shared/app_images.dart';
import 'package:flutter/material.dart';

class ListViewVerticalPage extends StatefulWidget {
  const ListViewVerticalPage({Key? key}) : super(key: key);

  @override
  State<ListViewVerticalPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewVerticalPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(AppImages.user1),
          ),
          title: const Text('User 1'),
          subtitle: const Text('Olá! Tudo bem?'),
          trailing: PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext bc) {
            return <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: '1',
                child: Text('Option 1'),
              ),
              const PopupMenuItem<String>(
                value: '2',
                child: Text('Option 2'),
              ),
              const PopupMenuItem<String>(
                value: '3',
                child: Text('Option 3'),
              ),
            ];
          }),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(AppImages.user2),
          ),
          title: const Text('User 2'),
          subtitle: const Text('Olá! Tudo bem?'),
          trailing: PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext bc) {
            return <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: '1',
                child: Text('Option 1'),
              ),
              const PopupMenuItem<String>(
                value: '2',
                child: Text('Option 2'),
              ),
              const PopupMenuItem<String>(
                value: '3',
                child: Text('Option 3'),
              ),
            ];
          }),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Image.asset(AppImages.user3),
          ),
          title: const Text('User 3'),
          subtitle: const Text('Olá! Tudo bem?'),
          trailing: PopupMenuButton<String>(onSelected: (value) {
            print(value);
          }, itemBuilder: (BuildContext bc) {
            return <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: '1',
                child: Text('Option 1'),
              ),
              const PopupMenuItem<String>(
                value: '2',
                child: Text('Option 2'),
              ),
              const PopupMenuItem<String>(
                value: '3',
                child: Text('Option 3'),
              ),
            ];
          }),
        ),
        Image.asset(AppImages.landscape1),
        Image.asset(AppImages.landscape2),
        Image.asset(AppImages.landscape3)
      ],
    );
  }
}
