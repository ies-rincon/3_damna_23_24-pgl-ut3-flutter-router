import 'package:flutter/material.dart';
import 'package:flutter_router/src/pages/page_profile.dart';

import '../settings/settings_view.dart';
import 'page_item.dart';
import 'page_item_details_view.dart';

/// List of Pages.
class PagesItemListView extends StatelessWidget {
  const PagesItemListView({
    super.key,
    this.items = const [PageItem(1), PageItem(2), PageItem(3)],
  });

  static const routeName = '/';

  final List<PageItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pages'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: ListView.builder(
        restorationId: 'pageItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ListTile(
              title: Text('Page ${item.id}'),
              leading: const CircleAvatar(
                // Display the Flutter Logo image asset.
                foregroundImage: AssetImage('assets/images/flutter_logo.png'),
              ),
              onTap: () {
                Navigator.restorablePushNamed(
                  context,
                  PageItemDetailsView.routeName,
                  arguments: <String, String>{
                    "info-page": "Page ${item.id.toString()}"
                  },
                );
              });
        },
      ),
      // Botón en el footer
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.blue,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Profile(name: "John Doe"),
                      ),
                    );
                  },
                  child: const Text('Go to Profile'))
            ],
          ),
        ),
      ),
    );
  }
}
