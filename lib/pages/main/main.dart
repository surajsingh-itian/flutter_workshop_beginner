import 'package:flutter/material.dart';
import 'package:flutter_workshop/routes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    {'name': 'Default', 'link': WorkshopRoutes.home},
    {'name': 'Login', 'link': WorkshopRoutes.login}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Main')),
      body: ListView.separated(
        itemCount: pages.length,
        itemBuilder: (_, index) => ListTile(
          onTap: () => Navigator.of(context).pushNamed(pages[index]['link']),
          title: Text(pages[index]['name']),
        ),
        separatorBuilder: (_, int index) => const Divider(),
        shrinkWrap: true,
      ),
    );
  }
}
