import 'package:auto_route/auto_route.dart';
import 'package:fiura_ecosystem/router/app_router.gr.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fiura')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.of(context).pop();
                context.router.pushAndPopUntil(const PostsScreenRoute(),
                    predicate: (route) => false);
              },
            ),
            ListTile(
              title: const Text('Artistas'),
              onTap: () {
                Navigator.of(context).pop();
                context.router.pushAndPopUntil(const ArtistsScreenRoute(),
                    predicate: (route) => false);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: const [
          Text('Fiura'),
          Expanded(child: AutoRouter()),
        ],
      ),
    );
  }
}
